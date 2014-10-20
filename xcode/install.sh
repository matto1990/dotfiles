if test ! $(which pod)
then
	echo "  Installing cocoapods for you."
	gem install cocoapods
fi

if [ ! -d "$HOME/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin" ]
then
    echo "   Installing alcatraz for you."
    curl -fsSL https://raw.github.com/supermarin/Alcatraz/master/Scripts/install.sh | sh
fi
