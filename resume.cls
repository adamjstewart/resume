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

% Margins
\RequirePackage[left=0.5in,right=0.5in,top=0.75in,bottom=0.75in]{geometry}


% Options

% Pass all undefined options to the 'article' class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


% More Declarations

% Use sans serif font
\renewcommand{\familydefault}{\sfdefault}

% Turn off page numbering
\pagestyle{empty}

% Turn off indentation
\setlength{\parindent}{0pt}

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

% Subsection title formatting
\titleformat{\subsection}
    {\bfseries}         % format to be applied to the whole title
    {}                  % label
    {0pt}               % horizontal separation between label and title body
    {}                  % code preceding the title body

\titlespacing*{\subsection}
    {0pt}               % horizontal separation from left margin
    {8pt}               % vertical spacing before title
    {0pt}               % vertical spacing after title

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

% Add 'sections' to the input path
\def\input@path{{sections/}}
