USE [LoginDB]
GO
/****** Object:  Table [dbo].[Attendence]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendence](
	[AttendenceID] [int] NOT NULL,
	[RegistrationID] [int] NOT NULL,
	[ClassCourseID] [int] NOT NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_Attendence] PRIMARY KEY CLUSTERED 
(
	[AttendenceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](50) NULL,
	[StartTiming] [time](7) NULL,
	[Section] [nvarchar](50) NULL,
	[EndTiming] [time](7) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassCourse]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassCourse](
	[ClassID] [int] NOT NULL,
	[InstructorCourseID] [int] NOT NULL,
	[ClassCourseID] [int] IDENTITY(1,1) NOT NULL,
	[AssignedOn] [datetime] NULL,
 CONSTRAINT [PK_ClassCourse] PRIMARY KEY CLUSTERED 
(
	[ClassCourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Constraints]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Constraints](
	[CheckID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[CNIC] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
 CONSTRAINT [PK_EmailCheck] PRIMARY KEY CLUSTERED 
(
	[CheckID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseMaterial]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseMaterial](
	[UploadID] [int] IDENTITY(1,1) NOT NULL,
	[InstructorCourseID] [int] NULL,
	[FileName] [nvarchar](50) NULL,
	[FileLocation] [nvarchar](150) NULL,
 CONSTRAINT [PK_CourseMaterial] PRIMARY KEY CLUSTERED 
(
	[UploadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[CourseDescription] [nvarchar](max) NULL,
	[CourseNo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseTest]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseTest](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[ClassCourseID] [int] NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Option1] [nvarchar](100) NULL,
	[Option2] [nvarchar](100) NULL,
	[Option3] [nvarchar](100) NULL,
	[Option4] [nvarchar](100) NULL,
	[CorrectAnswer] [nvarchar](100) NULL,
 CONSTRAINT [PK_CourseTest] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[StudentEnrollmentID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[RegistrationID] [int] NOT NULL,
	[AssignedOn] [datetime] NULL,
 CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED 
(
	[StudentEnrollmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gaurdian]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gaurdian](
	[GaurdianID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Mobile] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Income] [int] NULL,
	[CNIC] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Parent] PRIMARY KEY CLUSTERED 
(
	[GaurdianID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[City] [nvarchar](50) NULL,
	[Qualification] [nvarchar](50) NOT NULL,
	[Experience] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InstructorCourse]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstructorCourse](
	[CourseID] [int] NOT NULL,
	[InstructorID] [int] NOT NULL,
	[InstructorCourseID] [int] IDENTITY(1,1) NOT NULL,
	[AssignedOn] [datetime] NULL,
 CONSTRAINT [PK_InstructorCourse] PRIMARY KEY CLUSTERED 
(
	[InstructorCourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[Susername] [nvarchar](50) NULL,
	[Dusername] [nvarchar](50) NULL,
	[Message] [nvarchar](max) NULL,
	[Placed] [nvarchar](50) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentParent]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentParent](
	[RegistrationID] [int] NOT NULL,
	[GaurdianID] [int] NOT NULL,
	[RelationshipType] [nvarchar](50) NOT NULL,
	[StudentParentID] [int] NOT NULL,
 CONSTRAINT [PK_StudentParent] PRIMARY KEY CLUSTERED 
(
	[StudentParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentRegistration]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentRegistration](
	[RegistrationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[RegistrationNo] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[ConfirmPassword] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StudentRegistration] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblResetPasswordStudentRequests]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblResetPasswordStudentRequests](
	[Id] [uniqueidentifier] NOT NULL,
	[RegistrationID] [int] NULL,
	[ResetRequestDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([ClassID], [ClassName], [StartTiming], [Section], [EndTiming]) VALUES (2, N'One', CAST(N'08:00:00' AS Time), N'A', CAST(N'13:00:00' AS Time))
INSERT [dbo].[Class] ([ClassID], [ClassName], [StartTiming], [Section], [EndTiming]) VALUES (3, N'One', CAST(N'08:02:00' AS Time), N'B', CAST(N'13:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[Class] OFF
SET IDENTITY_INSERT [dbo].[ClassCourse] ON 

INSERT [dbo].[ClassCourse] ([ClassID], [InstructorCourseID], [ClassCourseID], [AssignedOn]) VALUES (2, 1, 1, CAST(N'2019-11-25T17:05:00.000' AS DateTime))
INSERT [dbo].[ClassCourse] ([ClassID], [InstructorCourseID], [ClassCourseID], [AssignedOn]) VALUES (3, 1, 2, CAST(N'2019-11-22T05:09:00.000' AS DateTime))
INSERT [dbo].[ClassCourse] ([ClassID], [InstructorCourseID], [ClassCourseID], [AssignedOn]) VALUES (2, 3, 3, CAST(N'2019-11-25T01:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ClassCourse] OFF
SET IDENTITY_INSERT [dbo].[Constraints] ON 

INSERT [dbo].[Constraints] ([CheckID], [Email], [CNIC], [Mobile], [Username]) VALUES (1017, N'mariam@gmail.com', NULL, NULL, N'mariam')
INSERT [dbo].[Constraints] ([CheckID], [Email], [CNIC], [Mobile], [Username]) VALUES (1018, N'amjad@gmail.com', NULL, N'0300-9456175', N'amjad')
INSERT [dbo].[Constraints] ([CheckID], [Email], [CNIC], [Mobile], [Username]) VALUES (1019, N'amjad1@gmail.com', NULL, N'0300-9456175', N'amjad1')
INSERT [dbo].[Constraints] ([CheckID], [Email], [CNIC], [Mobile], [Username]) VALUES (1020, N'khadija@gmail.com', NULL, NULL, N'khadija')
INSERT [dbo].[Constraints] ([CheckID], [Email], [CNIC], [Mobile], [Username]) VALUES (1021, N'asma@gmail.com', NULL, NULL, N'asma')
INSERT [dbo].[Constraints] ([CheckID], [Email], [CNIC], [Mobile], [Username]) VALUES (2016, N'salmansaeedbutt1@outlook.com', NULL, NULL, N'salman')
INSERT [dbo].[Constraints] ([CheckID], [Email], [CNIC], [Mobile], [Username]) VALUES (2018, N'samyanwahla@gmail.com', NULL, N'0300-9456179', N'samyan1')
SET IDENTITY_INSERT [dbo].[Constraints] OFF
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseID], [CourseName], [CourseDescription], [CourseNo]) VALUES (6, N'DBMS', N'aaa', N'CSE-141')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [CourseDescription], [CourseNo]) VALUES (8, N'SE', N'this is test course', N'CSE-165')
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[Enrollment] ON 

INSERT [dbo].[Enrollment] ([StudentEnrollmentID], [ClassID], [RegistrationID], [AssignedOn]) VALUES (12, 2, 3, CAST(N'2019-11-15T10:31:00.000' AS DateTime))
INSERT [dbo].[Enrollment] ([StudentEnrollmentID], [ClassID], [RegistrationID], [AssignedOn]) VALUES (13, 2, 4, CAST(N'2019-11-15T10:32:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Enrollment] OFF
SET IDENTITY_INSERT [dbo].[Gaurdian] ON 

INSERT [dbo].[Gaurdian] ([GaurdianID], [Name], [Address], [Mobile], [City], [Income], [CNIC], [Email], [Password]) VALUES (3, N'Saeed', N'house#1,nafeerabad,shalimar town', N'0300-9456175', N'Lahore', 20000, N'35201-9379261-4', N'saeed@gmail.com', N'S@eed123')
SET IDENTITY_INSERT [dbo].[Gaurdian] OFF
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([InstructorID], [Name], [Mobile], [Address], [City], [Qualification], [Experience], [Email], [Password], [Username]) VALUES (2, N'Amjad Farooq', N'0300-9456175', N'house#2,staff colony,UET', N'Lahore', N'MS Software Engineering', N'2 years', N'amjad1@gmail.com', N'Amj@d123', N'amjad1')
INSERT [dbo].[Instructor] ([InstructorID], [Name], [Mobile], [Address], [City], [Qualification], [Experience], [Email], [Password], [Username]) VALUES (1002, N'Samyan', N'0300-9456179', N'House#2,Street # 4, Walled City', N'Lahore', N'MS Software Engineering', N'1 years', N'samyanwahla@gmail.com', N'S@myan123', N'samyan1')
SET IDENTITY_INSERT [dbo].[Instructor] OFF
SET IDENTITY_INSERT [dbo].[InstructorCourse] ON 

INSERT [dbo].[InstructorCourse] ([CourseID], [InstructorID], [InstructorCourseID], [AssignedOn]) VALUES (6, 2, 1, CAST(N'2019-11-22T10:55:00.000' AS DateTime))
INSERT [dbo].[InstructorCourse] ([CourseID], [InstructorID], [InstructorCourseID], [AssignedOn]) VALUES (8, 1002, 3, CAST(N'2019-11-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[InstructorCourse] OFF
SET IDENTITY_INSERT [dbo].[StudentRegistration] ON 

INSERT [dbo].[StudentRegistration] ([RegistrationID], [Name], [Address], [City], [RegistrationNo], [Email], [Password], [ConfirmPassword], [Username]) VALUES (3, N'Mariam', N'house#1,nafeerabad,shalimar town', N'Lahore', N'2016-CS-368', N'mariamsaeedbutt423@gmail.com', N'M@riam123', N'M@riam123', N'mariam')
INSERT [dbo].[StudentRegistration] ([RegistrationID], [Name], [Address], [City], [RegistrationNo], [Email], [Password], [ConfirmPassword], [Username]) VALUES (4, N'Khadija', N' House#5,Model Town', N'Lahore', N'2016-CS-377', N'khadija@gmail.com', N'Kh@dija123', N'Kh@dija123', N'khadija')
INSERT [dbo].[StudentRegistration] ([RegistrationID], [Name], [Address], [City], [RegistrationNo], [Email], [Password], [ConfirmPassword], [Username]) VALUES (5, N'Asma', N'House#2,Street # 4, Walled City', N'Lahore', N'2016-CS-372', N'asma@gmail.com', N'Asm@123', N'Asm@123', N'asma')
INSERT [dbo].[StudentRegistration] ([RegistrationID], [Name], [Address], [City], [RegistrationNo], [Email], [Password], [ConfirmPassword], [Username]) VALUES (1002, N'Salman', N'House#4,UET Staff Colony', N'Lahore', N'2016-CS-390', N'salmansaeedbutt1@outlook.com', N'S@lman123', N'S@lman123', N'salman')
SET IDENTITY_INSERT [dbo].[StudentRegistration] OFF
INSERT [dbo].[tblResetPasswordStudentRequests] ([Id], [RegistrationID], [ResetRequestDateTime]) VALUES (N'c3a1cb43-d182-4d92-b18d-0c2f5a8b1ab3', 3, CAST(N'2019-11-15T20:03:11.740' AS DateTime))
INSERT [dbo].[tblResetPasswordStudentRequests] ([Id], [RegistrationID], [ResetRequestDateTime]) VALUES (N'4f5f3478-874c-4b6a-9c44-2207c78f596e', 3, CAST(N'2019-11-15T20:09:57.483' AS DateTime))
INSERT [dbo].[tblResetPasswordStudentRequests] ([Id], [RegistrationID], [ResetRequestDateTime]) VALUES (N'4dbd7840-452b-4ec7-8d53-275b47d26746', 3, CAST(N'2019-11-15T19:08:43.757' AS DateTime))
INSERT [dbo].[tblResetPasswordStudentRequests] ([Id], [RegistrationID], [ResetRequestDateTime]) VALUES (N'af8bef3c-607f-43f4-b983-3ef29a83643a', 3, CAST(N'2019-11-15T18:51:12.370' AS DateTime))
INSERT [dbo].[tblResetPasswordStudentRequests] ([Id], [RegistrationID], [ResetRequestDateTime]) VALUES (N'5dbada5f-e2ed-4e0e-bab7-e6a6e1b2bf5a', 3, CAST(N'2019-11-25T09:57:53.627' AS DateTime))
INSERT [dbo].[tblResetPasswordStudentRequests] ([Id], [RegistrationID], [ResetRequestDateTime]) VALUES (N'8837418c-7271-4eeb-806b-ee9d18a847cb', 3, CAST(N'2019-11-15T18:55:45.347' AS DateTime))
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_ClassCourse] FOREIGN KEY([ClassCourseID])
REFERENCES [dbo].[ClassCourse] ([ClassCourseID])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_ClassCourse]
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_StudentRegistration] FOREIGN KEY([RegistrationID])
REFERENCES [dbo].[StudentRegistration] ([RegistrationID])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_StudentRegistration]
GO
ALTER TABLE [dbo].[ClassCourse]  WITH CHECK ADD  CONSTRAINT [FK_ClassCourse_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[ClassCourse] CHECK CONSTRAINT [FK_ClassCourse_Class]
GO
ALTER TABLE [dbo].[ClassCourse]  WITH CHECK ADD  CONSTRAINT [FK_ClassCourse_InstructorCourse] FOREIGN KEY([InstructorCourseID])
REFERENCES [dbo].[InstructorCourse] ([InstructorCourseID])
GO
ALTER TABLE [dbo].[ClassCourse] CHECK CONSTRAINT [FK_ClassCourse_InstructorCourse]
GO
ALTER TABLE [dbo].[CourseMaterial]  WITH CHECK ADD  CONSTRAINT [FK_CourseMaterial_InstructorCourse] FOREIGN KEY([InstructorCourseID])
REFERENCES [dbo].[InstructorCourse] ([InstructorCourseID])
GO
ALTER TABLE [dbo].[CourseMaterial] CHECK CONSTRAINT [FK_CourseMaterial_InstructorCourse]
GO
ALTER TABLE [dbo].[CourseTest]  WITH CHECK ADD  CONSTRAINT [FK_CourseTest_ClassCourse] FOREIGN KEY([ClassCourseID])
REFERENCES [dbo].[ClassCourse] ([ClassCourseID])
GO
ALTER TABLE [dbo].[CourseTest] CHECK CONSTRAINT [FK_CourseTest_ClassCourse]
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_Class]
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_StudentRegistration] FOREIGN KEY([RegistrationID])
REFERENCES [dbo].[StudentRegistration] ([RegistrationID])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_StudentRegistration]
GO
ALTER TABLE [dbo].[InstructorCourse]  WITH CHECK ADD  CONSTRAINT [FK_InstructorCourse_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[InstructorCourse] CHECK CONSTRAINT [FK_InstructorCourse_Courses]
GO
ALTER TABLE [dbo].[InstructorCourse]  WITH CHECK ADD  CONSTRAINT [FK_InstructorCourse_Instructor] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructor] ([InstructorID])
GO
ALTER TABLE [dbo].[InstructorCourse] CHECK CONSTRAINT [FK_InstructorCourse_Instructor]
GO
ALTER TABLE [dbo].[StudentParent]  WITH CHECK ADD  CONSTRAINT [FK_StudentParent_Gaurdian] FOREIGN KEY([GaurdianID])
REFERENCES [dbo].[Gaurdian] ([GaurdianID])
GO
ALTER TABLE [dbo].[StudentParent] CHECK CONSTRAINT [FK_StudentParent_Gaurdian]
GO
ALTER TABLE [dbo].[StudentParent]  WITH CHECK ADD  CONSTRAINT [FK_StudentParent_StudentRegistration] FOREIGN KEY([RegistrationID])
REFERENCES [dbo].[StudentRegistration] ([RegistrationID])
GO
ALTER TABLE [dbo].[StudentParent] CHECK CONSTRAINT [FK_StudentParent_StudentRegistration]
GO
ALTER TABLE [dbo].[tblResetPasswordStudentRequests]  WITH CHECK ADD FOREIGN KEY([RegistrationID])
REFERENCES [dbo].[StudentRegistration] ([RegistrationID])
GO
/****** Object:  StoredProcedure [dbo].[AddGaurdian]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[AddGaurdian]
@GaurdianID int,
@Name nvarchar(50),
@Address nvarchar(100),
@Mobile nvarchar(50),
@City nvarchar(50),
@Income nvarchar(50),
@CNIC nvarchar(50),
@Email nvarchar(50),
@Password nvarchar(50)
AS 
BEGIN

   INSERT INTO Gaurdian(Name,Address,Mobile,City,Income,CNIC,Email,Password)
    VALUES(@Name,@Address,@Mobile,@City,@Income,@CNIC,@Email,@Password)
END
GO
/****** Object:  StoredProcedure [dbo].[AddInstructor]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddInstructor]
@InstructorID int,
@Name nvarchar(50),
@Mobile nvarchar(50),
@Address nvarchar(100),
@City nvarchar(50),
@Qualification nvarchar(50),
@Experience nvarchar(50),
@Email nvarchar(50),
@Password nvarchar(50),
@Username nvarchar(50)
AS 
BEGIN

   INSERT INTO Instructor(Name,Mobile,Address,City,Qualification,Experience,Email,Password,Username)
    VALUES(@Name,@Mobile,@Address,@City,@Qualification,@Experience,@Email,@Password,@Username)
END
GO
/****** Object:  StoredProcedure [dbo].[ClassCourseCreateOrUpdate]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClassCourseCreateOrUpdate]
@ClassCourseID int,
@InstructorCourseID int,
@ClassID int,
@AssignedOn datetime
AS
BEGIN
IF(@ClassCourseID=0)
   BEGIN
   INSERT INTO ClassCourse(ClassID,InstructorCourseID,AssignedOn)
   VALUES(@ClassID,@InstructorCourseID,@AssignedOn)
   END
ELSE
   BEGIN
   Update ClassCourse
   SET
	  AssignedOn=@AssignedOn
	  WHERE ClassID=@ClassID AND ClassCourseID=@ClassCourseID AND InstructorCourseID=@InstructorCourseID
   END
END
GO
/****** Object:  StoredProcedure [dbo].[ClassCreateOrUpdate]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClassCreateOrUpdate]
@ClassID int,
@ClassName nvarchar(50),
@StartTiming time(7),
@EndTiming time(7),
@Section nvarchar(50)
AS
BEGIN
IF(@ClassID=0)
   BEGIN
   INSERT INTO Class(ClassName,StartTiming,EndTiming,Section)
   VALUES(@ClassName,@StartTiming,@EndTiming,@Section)
   END
ELSE
   BEGIN
   Update Class
   SET
      ClassName=@ClassName,
	  StartTiming=@StartTiming,
	  EndTiming=@EndTiming,
	  Section=@Section
	  WHERE ClassID=@ClassID
   END
END
GO
/****** Object:  StoredProcedure [dbo].[ClassDeleteByID]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClassDeleteByID]
@ClassID int
AS
      BEGIN
	  DELETE FROM Class
	  WHERE ClassID=@ClassID
      END

GO
/****** Object:  StoredProcedure [dbo].[ClassViewAll]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClassViewAll]
AS 
   BEGIN
   SELECT *
   FROM Class
   END	
GO
/****** Object:  StoredProcedure [dbo].[ClassViewByID]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClassViewByID]
@ClassID int
AS
	BEGIN
	SELECT *
	FROM Class
	Where ClassID=@ClassID
	END
GO
/****** Object:  StoredProcedure [dbo].[CourseCreateOrUpdate]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CourseCreateOrUpdate]
@CourseID int,
@CourseName nvarchar(50),
@CourseDescription nvarchar(max),
@CourseNo nvarchar(50)
AS
BEGIN
IF(@CourseID=0)
   BEGIN
   INSERT INTO Courses(CourseName,CourseDescription,CourseNo)
   VALUES(@CourseName,@CourseDescription,@CourseNo)
   END
ELSE
   BEGIN
   Update Courses
   SET
      CourseName=@CourseName,
	  CourseDescription=@CourseDescription,
	  CourseNo=@CourseNo
	  WHERE CourseID=@CourseID
   END
END
GO
/****** Object:  StoredProcedure [dbo].[CourseDeleteByID]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CourseDeleteByID]
@CourseID int
AS
      BEGIN
	  DELETE FROM Courses
	  WHERE CourseID=@CourseID
      END
GO
/****** Object:  StoredProcedure [dbo].[CourseViewAll]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CourseViewAll]
AS 
   BEGIN
   SELECT *
   FROM Courses
   END
GO
/****** Object:  StoredProcedure [dbo].[CourseViewByID]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CourseViewByID]
@CourseID int
AS
	BEGIN
	SELECT *
	FROM Courses
	Where CourseID=@CourseID
	END
GO
/****** Object:  StoredProcedure [dbo].[DeleteGaurdianByID]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteGaurdianByID]
@GaurdianID int
AS 

BEGIN
 DELETE FROM Gaurdian WHERE GaurdianID=@GaurdianID

END

GO
/****** Object:  StoredProcedure [dbo].[DeleteInstructorByID]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteInstructorByID]
@InstructorID int
AS 

BEGIN
 DELETE FROM Instructor WHERE InstructorID=@InstructorID

END
GO
/****** Object:  StoredProcedure [dbo].[EditGaurdian]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditGaurdian]
@GaurdianID int,
@Name nvarchar(50),
@Address nvarchar(100),
@Mobile nvarchar(50),
@City nvarchar(50),
@Income nvarchar(50),
@CNIC nvarchar(50),
@Email nvarchar(50),
@Password nvarchar(50)
AS 
BEGIN
IF(@GaurdianID>0)
   BEGIN
    UPDATE Gaurdian SET Name=@Name,Address=@Address,Mobile=@Mobile,City=@City,Income=@Income,CNIC=@CNIC,Email=@Email,Password=@Password
	WHERE GaurdianID=@GaurdianID
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[EditInstructor]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditInstructor]
@InstructorID int,
@Name nvarchar(50),
@Mobile nvarchar(50),
@Address nvarchar(100),
@City nvarchar(50),
@Qualification nvarchar(50),
@Experience nvarchar(50),
@Email nvarchar(50),
@Password nvarchar(50),
@Username nvarchar(50)
AS 
BEGIN
IF(@InstructorID>0)
   BEGIN
    UPDATE Instructor SET Name=@Name,Mobile=@Mobile,Address=@Address,City=@City,Qualification=@Qualification,Experience=@Experience,Email=@Email,Password=@Password,Username=@Username
	WHERE InstructorID=@InstructorID
	 END
 END
GO
/****** Object:  StoredProcedure [dbo].[EnrollmentCreateOrUpdate]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EnrollmentCreateOrUpdate]
@StudentEnrollmentID int,
@ClassID int,
@RegistrationID int,
@AssignedOn datetime
AS
BEGIN
IF(@StudentEnrollmentID=0)
   BEGIN
   INSERT INTO Enrollment(ClassID,RegistrationID,AssignedOn)
   VALUES(@ClassID,@RegistrationID,@AssignedOn)
   END
ELSE
   BEGIN
   Update Enrollment
   SET
	  AssignedOn=@AssignedOn
	  WHERE ClassID=@ClassID AND StudentEnrollmentID=@StudentEnrollmentID AND RegistrationID=@RegistrationID
   END
END
GO
/****** Object:  StoredProcedure [dbo].[EnrollmentViewAll]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EnrollmentViewAll]
AS 
   BEGIN
   SELECT *
   FROM Enrollment
   END	
GO
/****** Object:  StoredProcedure [dbo].[InstructorCourseCreateOrUpdate]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InstructorCourseCreateOrUpdate]
@InstructorCourseID int,
@InstructorID int,
@CourseID int,
@AssignedOn datetime
AS
BEGIN
IF(@InstructorCourseID=0)
   BEGIN
   INSERT INTO InstructorCourse(InstructorID,CourseID,AssignedOn)
   VALUES(@InstructorID,@CourseID,@AssignedOn)
   END
ELSE
   BEGIN
   Update InstructorCourse
   SET
	  AssignedOn=@AssignedOn,
	  InstructorID=@InstructorID
	  WHERE CourseID=@CourseID AND InstructorCourseID=@InstructorCourseID
   END
END
GO
/****** Object:  StoredProcedure [dbo].[spChangePassword]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spChangePassword]
@GUID uniqueidentifier,
@Password nvarchar(100)
as
Begin
 Declare @RegistrationID int
 
 Select @RegistrationID = RegistrationID
 from tblResetPasswordStudentRequests
 where Id= @GUID
 
 if(@RegistrationID is null)
 Begin
  -- If UserId does not exist
  Select 0 as IsPasswordChanged
 End
 Else
 Begin
  -- If UserId exists, Update with new password
  Update StudentRegistration set
  [Password] = @Password
  where RegistrationID = @RegistrationID
  
  -- Delete the password reset request row 
  Delete from tblResetPasswordStudentRequests
  where Id = @GUID
  
  Select 1 as IsPasswordChanged
 End
End
GO
/****** Object:  StoredProcedure [dbo].[spIsPasswordResetLinkValid]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spIsPasswordResetLinkValid] 
@GUID uniqueidentifier
as
Begin
 Declare @RegistrationID int
 
 If(Exists(Select RegistrationID from tblResetPasswordStudentRequests where Id = @GUID))
 Begin
  Select 1 as IsValidPasswordResetLink
 End
 Else
 Begin
  Select 0 as IsValidPasswordResetLink
 End
End
GO
/****** Object:  StoredProcedure [dbo].[spRegisterUser]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spRegisterUser]
	@Name  NVARCHAR (50),
	@Address nvarchar(50),
	@City nvarchar(50),
	@RegistrationNo NVARCHAR (100),
	@Username NVARCHAR(50),
	@Email   NVARCHAR (50),
	@Password   NVARCHAR (50),
	@ConfirmPassword NVARCHAR (50)

AS
	Begin
	Declare @count int
	Declare @ReturnCode int
	Select @count=Count(Email)
	from [StudentRegistration] where Email=@Email
	if @count > 0
	Begin 
		set @ReturnCode=-1
	End
	Else
	Begin 
		set @ReturnCode=1
		insert into [StudentRegistration] values(@Name,@Address,@City,@RegistrationNo,@Email,@Password,@ConfirmPassword,@Username)
	End
	select @ReturnCode as ReturnValue
	End
RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[spResetPassword]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spResetPassword]
@UserName nvarchar(100)
as
Begin
 Declare @RegistrationID int
 Declare @Email nvarchar(100)
 
 Select @RegistrationID=RegistrationID, @Email = Email 
 from StudentRegistration
 where UserName = @UserName
 
 if(@RegistrationID IS NOT NULL)
 Begin
  --If username exists
  Declare @GUID UniqueIdentifier
  Set @GUID = NEWID()
  Insert into [LoginDB].[dbo].[tblResetPasswordStudentRequests]
  (Id,RegistrationID,ResetRequestDateTime)
  Values(@GUID,@RegistrationID,GETDATE())
  
  Select 1 as ReturnCode, @GUID as UniqueId, @Email as Email
 End
 Else
 Begin
  --If username does not exist
  SELECT 0 as ReturnCode, NULL as UniqueId, NULL as Email
 End
End


GO
/****** Object:  StoredProcedure [dbo].[ViewAllGaurdian]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ViewAllGaurdian]
AS 

BEGIN
SELECT * FROM Gaurdian
END
GO
/****** Object:  StoredProcedure [dbo].[ViewAllInstructor]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ViewAllInstructor]
AS 

BEGIN
SELECT * FROM Instructor
END
GO
/****** Object:  StoredProcedure [dbo].[ViewGaurdianByID]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ViewGaurdianByID]
@GaurdianID int
AS 

BEGIN
SELECT * FROM Gaurdian WHERE GaurdianID=@GaurdianID

END
GO
/****** Object:  StoredProcedure [dbo].[ViewInstructorByID]    Script Date: 11/25/2019 9:16:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ViewInstructorByID]
@InstructorID int
AS 

BEGIN
SELECT * FROM Instructor WHERE InstructorID=@InstructorID

END
GO
