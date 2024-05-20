import 'package:t_portfolio/utils/assets.dart';

class Skill {
  final String name;
  final String description;
  final String icon;
  final int level;

  Skill({
    required this.name,
    required this.description,
    required this.icon,
    required this.level,
  });

  static List<List<Skill>> skills = [
    [
      Skill(
        name: 'Flutter',
        description: 'Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase.',
        icon: Assets.flutter,
        level: 5,
      ),
      Skill(
        name: 'Dart',
        description: 'Dart is a client-optimized programming language for fast apps on any platform. Dart is used to build mobile, desktop, backend, and web applications.',
        icon: Assets.dart,
        level: 4,
      ),
    ],
    [
      Skill(
        name: 'Git',
        description: 'Git is a distributed version-control system for tracking changes in source code during software development. It is designed for coordinating work among programmers, but it can be used to track changes in any set of files.',
        icon: Assets.git,
        level: 4,
      ),
      Skill(
        name: 'Github',
        description: 'GitHub is a provider of Internet hosting for software development and version control using Git. It offers the distributed version control and source code management functionality of Git, plus its own features.',
        icon: Assets.github,
        level: 5,
      ),
    ],
    [
      Skill(
        name: 'Ubuntu',
        description: 'Ubuntu is a Linux distribution based on Debian and composed mostly of free and open-source software. Ubuntu is officially released in three editions: Desktop, Server, and Core for Internet of things devices and robots.',
        icon: Assets.ubuntu,
        level: 5,
      ),
      Skill(
        name: 'Docker',
        description: 'Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers. Containers are isolated from one another and bundle their own software, libraries, and configuration files.',
        icon: Assets.docker,
        level: 4,
      ),
    ],
    [
      Skill(
        name: 'C/C++',
        description: 'C is a general-purpose, procedural computer programming language supporting structured programming, lexical variable scope, and recursion, with a static type system. By design, C provides constructs that map efficiently to typical machine instructions.',
        icon: Assets.c,
        level: 4,
      ),
      Skill(
        name: 'DSA',
        description: 'Data structures and algorithms (DSA) is the study of mathematical and logical concepts related to computer science that enable efficient data storage and retrieval.',
        icon: Assets.dsa,
        level: 5,
      ),
    ],
    [
      Skill(
        name: 'VSCode',
        description: 'Visual Studio Code is a source-code editor developed by Microsoft for Windows, Linux, and macOS. It includes support for debugging, embedded Git control and GitHub, syntax highlighting, intelligent code completion, snippets, and code refactoring.',
        icon: Assets.vscode,
        level: 5,
      ),
      Skill(
        name: 'Android Studio',
        description: 'Android Studio is the official integrated development environment for Google\'s Android operating system, built on JetBrains\' IntelliJ IDEA software and designed specifically for Android development.',
        icon: Assets.androidStudio,
        level: 4,
      ),
      Skill(
        name: 'Intellij',
        description: 'IntelliJ IDEA is an integrated development environment written in Java for developing computer software. It is developed by JetBrains, and is available as an Apache 2 Licensed community edition, and in a proprietary commercial edition.',
        icon: Assets.intellij,
        level: 3,
      ),
    ],
    [
      Skill(
        name: 'MySQL',
        description: 'MySQL is an open-source relational database management system. Its name is a combination of "My", the name of co-founder Michael Widenius\'s daughter, and "SQL", the abbreviation for Structured Query Language.',
        icon: Assets.mysql,
        level: 5,
      ),
      Skill(
        name: 'SQL Server',
        description: 'Microsoft SQL Server is a relational database management system developed by Microsoft. As a database server, it is a software product with the primary function of storing and retrieving data as requested by other software applications.',
        icon: Assets.sqlServer,
        level: 5,
      ),
      Skill(
        name: 'MongoDB',
        description: 'MongoDB is a source-available cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with optional schemas.',
        icon: Assets.mongodb,
        level: 3,
      ),
    ],
    [
      Skill(
        name: 'Kotlin',
        description: 'Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference. Kotlin is designed to interoperate fully with Java, and the JVM version of its standard library depends on the Java Class Library.',
        icon: Assets.kotlin,
        level: 3,
      ),
      Skill(
        name: 'Android',
        description: 'Android is a mobile operating system based on a modified version of the Linux kernel and other open-source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.',
        icon: Assets.android,
        level: 4,
      ),
    ],
    [
      Skill(
        name: 'NodeJS',
        description: 'Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that runs on the V8 engine and executes JavaScript code outside a web browser.',
        icon: Assets.nodejs,
        level: 3,
      ),
      Skill(
        name: 'Express',
        description: 'Express.js, or simply Express, is a back end web application framework for Node.js, released as free and open-source software under the MIT License. It is designed for building web applications and APIs.',
        icon: Assets.express,
        level: 3,
      ),
    ],
    [
      Skill(
        name: 'Java',
        description: 'Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let application developers write once, run anywhere.',
        icon: Assets.java,
        level: 3,
      ),
      Skill(
        name: 'Spring Boot',
        description: 'Spring Boot is an open-source Java-based framework used to create micro-services. It is developed by Pivotal Team and is used to build stand-alone and production-ready spring applications.',
        icon: Assets.springBoot,
        level: 3,
      ),
    ],
    [
      Skill(
        name: 'Python',
        description: 'Python is an interpreted high-level general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant indentation.',
        icon: Assets.python,
        level: 4,
      ),
      Skill(
        name: 'Pytorch',
        description: 'PyTorch is an open-source machine learning library based on the Torch library, used for applications such as computer vision and natural language processing, primarily developed by Facebook\'s AI Research lab.',
        icon: Assets.pytorch,
        level: 3,
      ),
      Skill(
        name: 'Colab',
        description: 'Google Colab is a free cloud service and now it supports free GPU! You can; improve your Python programming language coding skills. develop deep learning applications using popular libraries such as Keras, TensorFlow, PyTorch, and OpenCV.',
        icon: Assets.colab,
        level: 3,
      ),
      Skill(
        name: 'Kaggle',
        description: 'Kaggle is an online community of data scientists and machine learning practitioners. Kaggle allows users to find and publish data sets, explore and build models in a web-based data-science environment, work with other data scientists and machine learning engineers, and enter competitions to solve data science challenges.',
        icon: Assets.kaggle,
        level: 3,
      ),
    ],
    [
      Skill(
        name: 'Postman',
        description: 'Postman is a collaboration platform for API development. Postman\'s features simplify each step of building an API and streamline collaboration so you can create better APIs—faster.',
        icon: Assets.postman,
        level: 3,
      ),
      Skill(
        name: 'Visual Paradigm',
        description: 'Visual Paradigm is a UML CASE Tool supporting UML 2, SysML, BPMN and Business Rule Modeling. It is used for software design, business process modeling, and system architecture design.',
        icon: Assets.visualParadigm,
        level: 3,
      ),
    ],
    [
      Skill(
        name: 'HTML5',
        description: 'Hypertext Markup Language is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets and scripting languages such as JavaScript.',
        icon: Assets.html,
        level: 3,
      ),
      Skill(
        name: 'CSS3',
        description: 'Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.',
        icon: Assets.css,
        level: 3,
      ),
      Skill(
        name: 'Java Script',
        description: 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object orientation, and first-class functions.',
        icon: Assets.javascript,
        level: 3,
      ),
    ],
  ];
}


// Flutter, Dart - 5
// Git, Github - 4
// Ubuntu, Docker - 4
// C/C++, DSA - 4
// VSCode, Android Studio , Intellij- 4
// MySQL, SQLServer, MongoDB - 4
// Kotlin, Android - 3
// NodeJS, Express - 3
// Java, Spring Boot - 3
// Python, Pytorch, Colab, Kaggle - 3
// Postman, Visual Paradigm - 3
// HTML, CSS, Javascript - 3