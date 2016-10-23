% Identification

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2016/10/23 My custom résumé class]


% Preliminary Declarations

% Extend the article class
\LoadClass[letterpaper,11pt]{article}

% Typography packages
\RequirePackage[defaultsans]{droidsans}
\RequirePackage{textcomp}

% Title and list formatting packages
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{calc}

% General formatting
\RequirePackage[margin=0.5in]{geometry}
\RequirePackage{multicol}
\RequirePackage{hyperref}


% Options

% Pass all undefined options to the 'article' class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


% More Declarations

% Section title formatting
\titleformat{\section}
    {\bfseries\scshape} % format to be applied to the whole title
    {}                  % label
    {0pt}               % horizontal separation between label and title body
    {}                  % code preceding the title body
    [\titlerule]        % code following the title body

\titlespacing*{\section}
    {0pt}               % horizontal separation from left margin
    {8pt}               % vertical spacing before title
    {5pt}               % vertical spacing after title

% List formatting
\setlist[itemize]{
    % Vertical spacing
    topsep=3pt,         % space between first item and preceding paragraph
    partopsep=0pt,      % extra space added to \topsep when environment starts a new paragraph
    parsep=0pt,         % space between paragraphs within an item
    itemsep=0pt,        % space between successive items
    % Horizontal spacing
    leftmargin=2em,     % space between left margin of page and left margin of list
    rightmargin=0pt,    % space between right margin of list and right margin of page
    listparindent=0pt,  % extra indentation of paragraphs in list except for first
    labelwidth=0pt,     % width of the label
    labelsep=0.5em,     % space between the end of the label box and the start of the first item
    itemindent=0pt      % extra indentation in front of item label
}

\setlist[description]{
    % Vertical spacing
    topsep=3pt,         % space between first item and preceding paragraph
    partopsep=0pt,      % extra space added to \topsep when environment starts a new paragraph
    parsep=0pt,         % space between paragraphs within an item
    itemsep=5pt,        % space between successive items
    % Horizontal spacing
    leftmargin=!,       % space between left margin of page and left margin of list
    rightmargin=0pt,    % space between right margin of list and right margin of page
    listparindent=0pt,  % extra indentation of paragraphs in list except for first
    labelwidth=\widthof{\bfseries Languages:},  % width of the label (using longest label)
    labelsep=0.5em,     % space between the end of the label box and the start of the first item
    itemindent=0pt      % extra indentation in front of item label
}

\renewcommand{\familydefault}{\sfdefault}

\pagestyle{empty}           % turn off page numbering
\setlength{\parindent}{0pt} % turn off indentation

% Add 'sections' to the input path
\def\input@path{{sections/}}
