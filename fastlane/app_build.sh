if [ "$1" == "--android" ]
then
   echo "Building APK..."
   cd ../android
   ./gradlew assembleProdRelease
elif [ "$1" == "--ios" ]
then
   echo "Building IPA..."
   flutter build appbundle --release
else
   echo "None of the condition met"
fi
