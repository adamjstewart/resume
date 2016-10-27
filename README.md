# resume

:page_facing_up: My modular LaTeX résumé and CV designs

## Design

My résumé and CV are designed as [Modular LaTeX Documents](https://en.wikibooks.org/wiki/LaTeX/Modular_Documents). Each section is stored as a standalone LaTeX file, and is added to the main `resume.tex` and `cv.tex` files with the use of the `\input` command. The main advantage of this design is that you can edit a single section and simultaneously update your résumé and CV, ensuring that they both stay up-to-date.

### resume.cls

In order to achieve my goal of simplicity, I created a `resume` document class that extends `article`. This class handles everything from section title formatting to margins. You can use this class by adding the following line to your main LaTeX file:
```latex
\documentclass{resume}
```

### contact.sty

I also created a `contact` package that handles the contact section at the top of the résumé. It provides commands such as `\name{}` and `\email{}` to specify contact information, and it overrides the `\maketitle` implementation to provide a more appropriate title. It defaults to a single column title, but also supports 2 and 3 column titles with the use of the `columns` optional parameter:
```latex
\usepackage[columns=3]{contact}
```

## Installation

To download, simply clone the repository:

```
$ git clone https://github.com/adamjstewart/resume.git
```

You will also need a LaTeX compiler and text editor. On macOS, I use [MacTeX](https://tug.org/mactex/) for LaTeX compilation, [Sublime Text](http://www.sublimetext.com/) as my editor, and the [LaTeXTools](https://github.com/SublimeText/LaTeXTools) plugin for Sublime Text. LaTeXTools provides useful shortcuts for editing and compiling LaTeX files. See the installation instructions for MacTeX, Sublime Text, and LaTeXTools to get them up and running.

## Building

One of the benefits of LaTeXTools is that you can define a `TEXroot` to specify the main project file. Then, when you press <kbd>&#8984;</kbd>+<kbd>B</kbd>, it builds the main file, not the section file. This saves you time because you don't need to switch between the section file and the main file every time you want to see your changes.

Unfortunately, you can only specify one `TEXroot` at a time. You will need to switch the `TEXroot` in the `resume.sublime-project` file between `resume.tex` and `cv.tex` to build both.
