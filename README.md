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

Clone the repo:
`git clone https://github.com/pizen/vimfiles.git ~/.vim`
Get the submodules:
`cd ~/.vim && git submodule init && git submodule update`
Make sure vim finds the vimrc file by either symlinking it:
`ln -s ~/.vim/vimrc ~/.vimrc`

Command-T
---------

Build Command-T:
`cd ~/.vim/bundle/Command-T/ruby/command-t && ruby extconf.rb && make`
