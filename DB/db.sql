USE [postComment]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 12/12/2020 15:34:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[Banner_Image] [nvarchar](max) NULL,
	[PostedOn] [nvarchar](max) NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Posts] ON
INSERT [dbo].[Posts] ([Id], [Title], [Description], [Author], [Banner_Image], [PostedOn]) VALUES (1, N'AngularJS to Angular - a brief history', N'Angular is one of the most well-known solutions for SPA (single-page application) development besides React and Vue.js. It has been around for almost 10 years and it has gone through countless adjustments since then. The first version of the framework - AngularJS - started back in 2009 and laid the foundation of present-day front-end application development.  I remember trying it out myself, memorizing its unique syntax for templates, trying to understand its quirks like the two-way data binding, dependency injection and many further concepts that come with the framework. I had my ups and downs learning it - especially with its change detection system - but after a few sleepless nights, I was able to develop a high-quality web application which harnessed the power of the underlying engine.  It was not perfect due to its huge bundle size compared to other libraries, and I often bumped into performance issues, but I got a web app running that satisfied common software development criteria. I could write clean code thanks to John Papa''s style guide and develop a relatively fast running app in short time focusing on its functional requirements.  I was not the only one having issues with the framework. You can find a ton of deficiency too in the framework, that makes AngularJS half success, half failure. Its architecture and chaotic digest loop system set limitations to its performance, however its template syntax worked out so well that it was adopted by Vue.js. (v-if - ng-if, v-model - ng-model)  AngularJS refers to the 1.x versions of the framework, from 2.x it is known as Angular.  The imperfection of AngularJS was the motivation behind the complete rewrite of the framework. Due to its unpredictable change detection system and robustness, the developers at Google needed to rewrite the framework. They began using really powerful libraries. On top of the original features, they introduced approaches like AOT (Ahead-of-Time) compiling, tree-shaking and many more. AOT converts the HTML and TypeScript code into JavaScript during build time, while tree-shaking gets rid of the unused imports to achieve faster application bootstrapping and smaller footprint.  It also got a fancy CLI that can initialize new projects, generate skeletons, build and create a development application server so it’s became a pretty handy tool!', N'tasin', N'Angular-Version-History-1280x720.jpgMon Nov 23 2020 17_51_40 GMT.jpg', N'2019-02-18T17:31:19-05:00')
INSERT [dbo].[Posts] ([Id], [Title], [Description], [Author], [Banner_Image], [PostedOn]) VALUES (2, N'Let''s clear up a misconception', N'There is a common misunderstanding that Angular''s change detection is the same thing as Zone.js. In fact, Angular forks Zone.js creating its own NgZone which emits an event when the microtasks are executed in the browser’s event loop. This event notifies the component''s change detector to run and update the components concerned.  Change detection is a really complicated topic on Angular but if you are interested getting to the bottom of it, check out this great article!  I have to admit, the dependencies of Angular might look overwhelming at first glance. All these libraries take time to master and we have not even started to learn the framework. Unfortunately, this is the point where many developers turn their back on it and start looking for another solution with a smaller learning curve.  Tip: Search on google with `-angularjs` option to omit the search results with the 1.x version. - via @RisingStack But hey, don''t give up! Take my advice and play around with the dependencies first to get an insight into the core libraries.', N'ifti', N'1_VKY-Ldkt-iHobItql7G_5w.pngMon Nov 23 2020 18_04_15 GMT.png', N'2019-02-18T17:31:19-05:00')
INSERT [dbo].[Posts] ([Id], [Title], [Description], [Author], [Banner_Image], [PostedOn]) VALUES (3, N'Resources to boost your confidence', N'Check out RxJS Marbles for the built-in RxJS operators! The interactive visual diagrams are great but advance with caution, the operators can get deprecated and new ones are added from time to time. You might not find all of them in the latest version of RxJS and the library is in lack of up-to-date documentations. Go ahead and search in the source code if you have any doubts!  I really love TypeScript because its static type check assures me I am not going to make any typos. If you are new to TS, check out its type system, and go through interfaces and classes. This is more than enough to figure out the basics of Angular but still, it is really interesting to see what is the output of a compiled TS file. Do files including only interfaces have any code compiled to JS? - I will just leave this question here.  Understanding what is under the hood will definitely boost your confidence when it comes to the framework itself!  Indeed, #Angular might have a longer learning period compared to other front-end libraries but in return it enhances the developer experience with built-in solutions that come by importing modules. Applications built on top of the framework are basically a tree of components that are organized into individual modules by their domain. Angular has quite a few core modules i.e.: CommonModule, FormsModule, RouterModule, etc. These modules contain custom attributes (directives), data transformation utilities (pipes), services and many other tools to speed up the process of application development. It actually lets you focus on the application logic of the product, ensuring that it runs flawlessly in the browser.  Of course, this framework is not a silver bullet for every scenario. Its true strength shines when it comes to developing data-driven, large-scale applications with complex logic.', N'sakib', N'6ee96bb816.pngMon Nov 23 2020 18_17_54 GMT.png', N'2019-02-18T17:31:19-05:00')
INSERT [dbo].[Posts] ([Id], [Title], [Description], [Author], [Banner_Image], [PostedOn]) VALUES (4, NULL, NULL, NULL, NULL, N'2019-02-18T17:31:19-05:00')
INSERT [dbo].[Posts] ([Id], [Title], [Description], [Author], [Banner_Image], [PostedOn]) VALUES (5, N'lucky charm', N'dgfhdgfh', N'papon', N'tfghyg', N'2019-02-18T17:31:19-05:00')
SET IDENTITY_INSERT [dbo].[Posts] OFF
/****** Object:  Table [dbo].[Comments]    Script Date: 12/12/2020 15:34:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[postId] [int] NOT NULL,
	[comment] [nvarchar](max) NULL,
	[userName] [nvarchar](max) NULL,
	[commentedOn] [nvarchar](max) NULL,
	[Like] [int] NOT NULL,
	[Dislike] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comments] ON
INSERT [dbo].[Comments] ([Id], [postId], [comment], [userName], [commentedOn], [Like], [Dislike]) VALUES (1, 1, N'that''s very good', N'ifti', N'2019-02-18T17:31:19-05:00', 5, 1)
INSERT [dbo].[Comments] ([Id], [postId], [comment], [userName], [commentedOn], [Like], [Dislike]) VALUES (2, 3, N'good to know', N'sakib', N'2019-02-18T17:31:19-05:00', 6, 2)
INSERT [dbo].[Comments] ([Id], [postId], [comment], [userName], [commentedOn], [Like], [Dislike]) VALUES (5, 2, N'great blog', N'sakib', N'2019-02-18T17:31:19-05:00', 3, 5)
INSERT [dbo].[Comments] ([Id], [postId], [comment], [userName], [commentedOn], [Like], [Dislike]) VALUES (9, 2, N'okay', N'papon', N'2019-02-18T17:31:19-05:00', 4, 5)
INSERT [dbo].[Comments] ([Id], [postId], [comment], [userName], [commentedOn], [Like], [Dislike]) VALUES (10, 1, N'nice', N'tasin', N'2019-02-18T17:31:19-05:00', 1, 0)
INSERT [dbo].[Comments] ([Id], [postId], [comment], [userName], [commentedOn], [Like], [Dislike]) VALUES (11, 1, N'dfhgdfgg', N'yana', N'2019-02-18T17:31:19-05:00', 0, 0)
INSERT [dbo].[Comments] ([Id], [postId], [comment], [userName], [commentedOn], [Like], [Dislike]) VALUES (12, 4, N'tfyhtfg', N'yuppa', N'2019-02-18T17:31:19-05:00', 0, 0)
INSERT [dbo].[Comments] ([Id], [postId], [comment], [userName], [commentedOn], [Like], [Dislike]) VALUES (14, 5, N'fghfgjh', N'na', N'2019-02-18T17:31:19-05:00', 0, 0)
SET IDENTITY_INSERT [dbo].[Comments] OFF
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/12/2020 15:34:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201212074725_InitialCreate', N'3.1.10')
