USE [MPT]
GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (1, N'105_ALARM', N'P:\_Projects_HMI\105_alarm', N'2.0', N'RSView 7.x', N'������������', CAST(N'2006-01-01T00:00:00.000' AS DateTime), CAST(N'2011-09-01T00:00:00.000' AS DateTime), 105, 101)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (2, N'105_KMP', N'P:\_Projects_HMI\105_kmp', N'1.0', N'RSView 7.x', N'���������� K-3/1,2', CAST(N'2006-01-01T00:00:00.000' AS DateTime), CAST(N'2011-09-01T00:00:00.000' AS DateTime), 105, 0)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (3, N'105_GRANUL', N'P:\_Projects_HMI\105_Granul', N'1.0', N'RSView 7.x', N'����������', CAST(N'2011-12-29T13:27:12.000' AS DateTime), CAST(N'2011-12-29T13:27:26.000' AS DateTime), 105, 800)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (4, N'101_FR', N'P:\_Projects_HMI\101_FR', N'1.0', N'RSView 7.x', N'����������������', CAST(N'2011-12-29T15:13:13.000' AS DateTime), CAST(N'2011-12-29T15:13:48.000' AS DateTime), 101, 200)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (5, N'101_GAS', N'P:\_Projects_HMI\101_GAS', N'1.0', N'RSView 7.x', N'��������������', CAST(N'2011-12-29T16:48:43.000' AS DateTime), CAST(N'2011-12-29T16:49:13.000' AS DateTime), 101, 101)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (6, N'101_GAS_IIS', N'P:\_Projects_HMI\101_GAS_IIS', N'1.0', N'RSView 7.x', N'��������� ��������������', CAST(N'2011-12-29T16:49:30.000' AS DateTime), CAST(N'2011-12-29T16:49:51.000' AS DateTime), 101, 102)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (7, N'101_KMP', N'P:\_Projects_HMI\101_KMP', N'1.0', N'RSView 7.x', N'����������', CAST(N'2011-12-29T16:49:59.000' AS DateTime), CAST(N'2011-12-29T16:50:21.000' AS DateTime), 101, 501)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (8, N'101_PP45', N'P:\_Projects_HMI\101_PP45', N'1.0', N'RSView 7.x', N'���� �4,5', CAST(N'2011-12-29T16:50:30.000' AS DateTime), CAST(N'2011-12-29T16:50:58.000' AS DateTime), 101, 204)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (9, N'101_PP67', N'P:\_Projects_HMI\101_PP67', N'1.0', N'RSView 7.x', N'���� �6,7', CAST(N'2011-12-29T16:51:29.000' AS DateTime), CAST(N'2011-12-29T16:51:53.000' AS DateTime), 101, 206)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (10, N'102', N'P:\_Projects_HMI\102', N'1.0', N'RSView 7.x', N'���������', CAST(N'2011-12-29T16:52:03.000' AS DateTime), CAST(N'2011-12-29T16:52:25.000' AS DateTime), 102, 100)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (11, N'104', N'P:\_Projects_HMI\104', N'1.0', N'RSView 7.x', N'���������', CAST(N'2011-12-29T16:52:27.000' AS DateTime), CAST(N'2011-12-29T16:52:51.000' AS DateTime), 104, 100)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (12, N'104_ETILEN', N'P:\_Projects_HMI\104_Etilen', N'1.0', N'RSView 7.x', N'������ 104', CAST(N'2011-12-29T16:52:58.000' AS DateTime), CAST(N'2011-12-29T16:53:18.000' AS DateTime), 104, 302)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (13, N'104_PROPILEN', N'P:\_Projects_HMI\104_Propilen', N'1.0', N'RSView 7.x', N'�������� 104', CAST(N'2011-12-29T16:53:21.000' AS DateTime), CAST(N'2011-12-29T16:53:39.000' AS DateTime), 104, 301)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (14, N'104_WODOROD', N'P:\_Projects_HMI\104_Wodorod', N'1.0', N'RSView 7.x', N'���� ��������� �������� (������� �-10, �-11, �-12)', CAST(N'2011-12-29T16:53:43.000' AS DateTime), CAST(N'2011-12-29T16:54:23.000' AS DateTime), 104, 302)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (15, N'104_PP12', N'P:\_Projects_HMI\104_PP12', N'1.0', N'RSView 7.x', N'���� �1,2', CAST(N'2011-12-29T16:54:28.000' AS DateTime), CAST(N'2011-12-29T16:54:56.000' AS DateTime), 104, 201)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (16, N'104_KMP', N'P:\_Projects_HMI\104_KMP', N'1.0', N'RSView 7.x', N'����������', CAST(N'2011-12-29T16:54:57.000' AS DateTime), CAST(N'2011-12-29T16:55:41.000' AS DateTime), 104, 502)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (17, N'104_KmpB1', N'P:\_Projects_HMI\104_KmpB1', N'1.0', N'RSView 7.x', N'���������� �1', CAST(N'2011-12-29T16:55:44.000' AS DateTime), CAST(N'2011-12-29T16:56:02.000' AS DateTime), 104, 501)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (18, N'105_AlarmWav', N'P:\_Projects_HMI\105_AlarmWav', N'1.0', N'RSView 7.x', N'������������ (����)', CAST(N'2011-12-29T16:56:15.000' AS DateTime), CAST(N'2011-12-29T16:57:05.000' AS DateTime), 105, 102)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (19, N'105_EPURA', N'P:\_Projects_HMI\105_Epura', N'1.0', N'RSView 7.x', N'�����', CAST(N'2011-12-29T16:57:48.000' AS DateTime), CAST(N'2011-12-29T16:58:08.000' AS DateTime), 105, 400)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (20, N'105_GRADIR', N'P:\_Projects_HMI\105_Gradir', N'1.0', N'RSView 7.x', N'��������', CAST(N'2011-12-29T16:58:10.000' AS DateTime), CAST(N'2011-12-29T16:58:41.000' AS DateTime), 105, 701)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (21, N'101_PRK', N'P:\_Projects_HMI\101_prk', N'1.0', N'RSView 7.x', N'��������', CAST(N'2010-01-27T07:59:10.000' AS DateTime), CAST(N'2012-01-27T07:59:43.000' AS DateTime), 101, 0)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (22, N'pc104_7', N'P:\_Projects_HMI\pc104_7', N'1.0', N'RSView 7.x', N'���� 7', CAST(N'2012-02-15T16:11:55.000' AS DateTime), CAST(N'2012-02-15T16:12:37.000' AS DateTime), 104, 207)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (23, N'104_FR', N'P:\_Projects_HMI\104_FR', N'1.0', N'RSView 7.x', N'����������������', CAST(N'2012-06-18T08:10:59.000' AS DateTime), CAST(N'2012-06-18T08:11:20.000' AS DateTime), 104, 400)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (24, N'105_02_iniciator', N'P:\_Projects_HMI\105_02_iniciator', N'1.0', N'RSView 7.x', N'����������� ���������', CAST(N'2012-10-01T18:30:14.000' AS DateTime), CAST(N'2012-10-04T18:31:02.000' AS DateTime), 105, 201)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (25, N'105_KMP_NEW', N'\\192.168.100.100', N'1.0', N'PCS7', N'����������', CAST(N'2012-10-01T18:30:14.000' AS DateTime), CAST(N'2012-10-01T18:30:14.000' AS DateTime), 105, 700)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (26, N'MPT', N'-', NULL, NULL, NULL, NULL, NULL, 100, NULL)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (27, N'102_KMP2', N'P:\_Projects_HMI\102_KMP2', N'1.0', N'RSView 7.x', N'���������� 2�� ��c����', CAST(N'2013-07-28T17:16:07.000' AS DateTime), CAST(N'2013-07-28T17:16:31.000' AS DateTime), 102, 200)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (28, N'101_PP23', N'P:\_Projects_HMI\101_PP23', N'1.0', N'RSView 7.x', N'���� �2,3', CAST(N'2013-07-28T18:00:35.000' AS DateTime), CAST(N'2013-07-28T18:00:53.000' AS DateTime), 101, 202)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (29, N'101_ALK', N'P:\_Projects_HMI\101_Alk', N'1.0', N'RSView 7.x', N'���� 1,2', CAST(N'2013-07-28T18:30:42.000' AS DateTime), CAST(N'2013-07-28T18:30:58.000' AS DateTime), 101, 103)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (30, N'101_SGN', N'P:\_Projects_HMI\101_sgn', N'1.0', N'RSView 7.x', N'������������', CAST(N'2013-07-28T18:31:28.000' AS DateTime), CAST(N'2013-07-28T18:31:46.000' AS DateTime), 101, 100)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (31, N'104_MAF', N'P:\_Projects_HMI\104_MAF', N'1.0', N'RSView 7.x', N'���� ���', CAST(N'2013-07-28T18:32:00.000' AS DateTime), CAST(N'2013-07-28T18:32:19.000' AS DateTime), 104, 901)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (32, N'104_RECT', N'P:\_Projects_HMI\104_RECT', N'1.0', N'RSView 7.x', N'������������', CAST(N'2013-07-28T18:32:38.000' AS DateTime), CAST(N'2013-07-28T18:32:54.000' AS DateTime), 104, 0)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (33, N'102_POLY', N'P:\_Projects_HMI\102_poly', N'1.0', N'RSView 7.x', N'�������������', CAST(N'2013-12-06T20:09:11.000' AS DateTime), CAST(N'2013-12-06T20:09:43.000' AS DateTime), 102, 300)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (34, N'101_PP18', N'P:\_Projects_HMI\101_PP18', N'1.0', N'RSView 7.x', N'���� �1,8', CAST(N'2013-07-28T18:00:35.000' AS DateTime), CAST(N'2013-07-28T18:00:35.000' AS DateTime), 101, 201)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (35, N'105_Iniciator', N'P:\_Projects_HMI\105_Iniciator', N'1', N'RSView 7.x', N'������������', CAST(N'2014-10-17T08:00:00.000' AS DateTime), CAST(N'2014-10-17T08:00:00.000' AS DateTime), 105, 202)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (36, N'105_Regul', N'P:\_Projects_HMI\105_Regul', N'1.0', N'RSView 7.x', N'����������', CAST(N'2014-10-17T08:00:00.000' AS DateTime), CAST(N'2014-10-17T08:00:00.000' AS DateTime), 105, 405)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (37, N'105_Shema', N'P:\_Projects_HMI\105_Shema', N'1.0', N'RSView 7.x', N'������', CAST(N'2014-10-17T08:00:00.000' AS DateTime), CAST(N'2014-10-17T08:00:00.000' AS DateTime), 105, 999)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (38, N'104_P9', N'p:\_Controllers\104\P9\', N'1.0', N'Experion', N'���� �9', CAST(N'2014-10-27T08:00:00.000' AS DateTime), CAST(N'2014-10-27T08:00:00.000' AS DateTime), 104, 209)
INSERT [dbo].[Project] ([Id], [ProjectName], [Path], [Version], [IDE], [Descr], [CreateDate], [EditDate], [FactoryId], [OrderIndex]) VALUES (39, N'101_SGN_NEW', N'P:\_Projects_HMI\101_Sgn_new', N'1.0', N'RSView 7.x', N'������������', NULL, NULL, 101, 999)
SET IDENTITY_INSERT [dbo].[Project] OFF