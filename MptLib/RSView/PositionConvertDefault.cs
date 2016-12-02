﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Xml;
using System.Xml.Linq;
using MPT.Model;
using MPT.RSLogix;

namespace MPT.RSView
{
    public static class PositionConvertDefault
    {
        public static string ToRSAlarmLabel(this double? value, string template="", string defaultValue = "")
        {
            return value == null ? defaultValue : string.Format(template, value, defaultValue);
        }
        
        public static double RSMin(this AiPosition position)
        {
            return (double)(position.Scale.Low + position.Scale1());
        }

        public static double RSMax(this AiPosition position)
        {
            return (double)(position.Scale.High + position.Scale1());
        }
        
        public static double Scale1(this AiPosition position)
        {
            if (position.Scale.High != null && position.Scale.Low != null)
            return (position.Scale.High.Value - position.Scale.Low.Value) / 100;
            return 0;
        }

        public static AnalogTag CreateAnalogTagDefault(this AiPosition position, string folder, string name, string descriprion,
                                                double initialValue = 0, string nodeName = null, string address = null)
        {
            var tag = new AnalogTag()
                      {
                          Folder = folder,
                          Name = name,
                          Desctiption = descriprion,

                          InitialValue = initialValue,
                          NodeName = nodeName,
                          Address = address,

                          Min = position.RSMin(),
                          Max = position.RSMax(),
                          Units = position.Units,
                      };
            return tag;
        }

        public static IEnumerable<Tag> GetTagsByDefault(this AiPosition position, bool logged, string nodeName)
        {
            const string RSAiFolderTemplate = "AI\\{0}";

            var tags = new List<Tag>();

            var folderTag = new Tag()
            {
                Address = string.Format(RSAiFolderTemplate, position.ShortName),
            };
            tags.Add(folderTag);


            var enTag = new DigitalTag()
            {
                Folder = folderTag.FullName,
                Name = "EN",
                Desctiption = "Позиция в обработке",
                NodeName = nodeName,
                Address = position.GetItemAddress("EN"),
            };
            tags.Add(enTag);


            var currentTag = new AnalogTag()
            {
                Folder = folderTag.FullName,
                Name = "i",
                Desctiption = "Ток",
                Min = -1,
                Max = 21,
                Units = "мА",
                NodeName = nodeName,
                Address = position.GetItemAddress("i"),
            };
            tags.Add(currentTag);


            var vTag = new AnalogTag()
            {
                Folder = folderTag.FullName,
                Name = "v",
                Desctiption = position.FullName,
                Min = position.RSMin(),
                Max = position.RSMax(),
                Units = position.Units,
                NodeName = nodeName,
                Address = position.GetItemAddress("v"),
            };
            tags.Add(vTag);


            var vMinTag = new AnalogTag()
            {
                Folder = folderTag.FullName,
                Name = "vMin",
                Desctiption = position.FullName,
                Min = position.RSMin(),
                Max = position.RSMax(),
                Units = position.Units,
                NodeName = nodeName,
                Address = position.GetItemAddress("vMin"),
            };
            tags.Add(vMinTag);


            var nameTag = new StringTag()
            {
                Folder = folderTag.FullName,
                Name = "Name",
                Desctiption = position.Description,
                InitialValue = position.Name,
            };
            tags.Add(nameTag);


            tags.Add(position.CreateAnalogTagDefault(folderTag.FullName, "rMin", "Регламент Min", position.Reglament.Low ?? 0));
            tags.Add(position.CreateAnalogTagDefault(folderTag.FullName, "rMax", "Регламент Max", position.Reglament.High ?? 0));
            tags.Add(position.CreateAnalogTagDefault(folderTag.FullName, "sMin", "Сигнализация Min", position.Alarming.Low ?? 0));
            tags.Add(position.CreateAnalogTagDefault(folderTag.FullName, "sMax", "Сигнализация Max", position.Alarming.High ?? 0));
            tags.Add(position.CreateAnalogTagDefault(folderTag.FullName, "bMin", "Блокировка Min", position.Blocking.Low ?? 0));
            tags.Add(position.CreateAnalogTagDefault(folderTag.FullName, "bMax", "Блокировка Max", position.Blocking.High ?? 0));


            var breakTag = new DigitalTag()
            {
                Folder = folderTag.FullName,
                Name = "break",
                Desctiption = position.FullName,
                NodeName = nodeName,
                Address = position.GetItemAddress("break", "sgn"),
                Alarm = new DigitalTag.DigitalAlarm()
                {
                    Label = "Обрыв",
                    Severity = 4,

                },
            };
            tags.Add(breakTag);

            var stateTag = position.CreateAnalogTagDefault(folderTag.FullName, "State", position.Description,
                0, nodeName, position.GetItemAddress("state"));

            const string lowTemplate = "< {0} ({1})";
            const string highTemplate = "> {0} ({1})";


            stateTag.Alarm = AnalogTag.CreateDefaultAlarms();
            stateTag.Alarm1.Label = position.Blocking.Low.ToRSAlarmLabel(lowTemplate, "LL");
            stateTag.Alarm2.Label = position.Alarming.Low.ToRSAlarmLabel(lowTemplate, "L");
            stateTag.Alarm3.Label = position.Reglament.Low.ToRSAlarmLabel(lowTemplate, "RL");
            stateTag.Alarm4.Label = position.Reglament.High.ToRSAlarmLabel(highTemplate, "RH");
            stateTag.Alarm5.Label = position.Alarming.High.ToRSAlarmLabel(highTemplate, "H");
            stateTag.Alarm6.Label = position.Blocking.High.ToRSAlarmLabel(highTemplate, "HH");

            return tags;
        }



    }
}
