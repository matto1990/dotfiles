if test ! $(which android)
then
  echo "  Installing android-sdk for you."
  brew install android-sdk
fi

if test ! $(which ndk-build)
then
  echo "  Installing android-ndk for you."
  brew install android-ndk
fi
