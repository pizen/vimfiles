                                   ___     
          ___        ___          /__/\    
         /__/\      /  /\        |  |::\   
         \  \:\    /  /:/        |  |:|:\  
          \  \:\  /__/::\      __|__|:|\:\ 
      ___  \__\:\ \__\/\:\__  /__/::::| \:\
     /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/
     \  \:\|  |:|     \__\::/  \  \:\      
      \  \:\__|:|     /__/:/    \  \:\     
       \__\::::/      \__\/      \  \:\    
           ~~~~                   \__\/    

This project keeps my .vim environment consistent across systems.

Installation
------------

1. Clone the repo
2. Get the submodules
3. Link .vimrc
    
    git clone https://github.com/pizen/vimfiles.git ~/.vim
    cd ~/.vim
    git submodule init
    git submodule update
    ln -s ~/.vim/vimrc ~/.vimrc

Command-T
---------

Command-T doesn't come ready to run from the submodule so one additional
step is necessary to build it.
    
    cd ~/.vim/bundle/Command-T/ruby/command-t
    ruby extconf.rb
    make
