% ========================================================================================
%        ________  __   ____                                   __                 _      
%       /_  __/ / / /  / __ )_________ ___  ______  __________/ /_ _      _____  (_)___ _
%        / / / / / /  / __  / ___/ __ `/ / / / __ \/ ___/ ___/ __ \ | /| / / _ \/ / __ `/
%       / / / /_/ /  / /_/ / /  / /_/ / /_/ / / / (__  ) /__/ / / / |/ |/ /  __/ / /_/ / 
%      /_/  \____/  /_____/_/   \__,_/\__,_/_/ /_/____/\___/_/ /_/|__/|__/\___/_/\__, /  
%     __        ______    _  __   _    __           __                         /____/   
%    / /  ____ /_  __/__ | |/ /  | |  / /___  _____/ /___ _____ ____     
%   / /  / __ `// / / _ \|   /   | | / / __ \/ ___/ / __ `/ __ `/ _ \    
%  / /__/ /_/ // / /  __/   |    | |/ / /_/ / /  / / /_/ / /_/ /  __/    
% /_____|__,_//_/  \___/_/|_|    |___/\____/_/  /_/\__,_/\__, /\___/     
%                                                      /____/
%
% =======================================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Praktikum}[2026/01/07 Praktikum Tu-Bs]

% Lade die Basis-Dokumentenklasse mit den Standardeinstellungen
\LoadClass[12pt, a4paper, DIV=12, BCOR=1cm]{scrartcl}
\input{User}
\RequirePackage{config/datenbank}

\RequirePackage{config/useful}
\RequirePackage{config/comander}
\RequirePackage{config/Deckblatt/ErsteSeite}
\RequirePackage{config/Creationen/uberschrift}
\RequirePackage{config/Creationen/SI}

% Options
\DeclareOption{Rick}{
\def\Rickroll{}
}
\DeclareOption{Nexus}{
    \def\tubs@font{Nexus}
}

\DeclareOption{pdflatex}{
    \def\tubs@comp{pdflatex}
}

\ProcessOptions\relax

\ifdefstring{\tubs@font}{Nexus}{
    \RequirePackage{config/TuFonts/Fonts}
}
{}

\ifdefstring{\tubs@comp}{pdflatex}{
    \RequirePackage[utf8]{inputenc}
}{
    \RequirePackage{fontspec}
    \setmainfont{Latin Modern Roman}
}

\setlength{\emergencystretch}{1em}