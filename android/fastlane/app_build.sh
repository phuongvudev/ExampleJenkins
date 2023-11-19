echo "Building APK..."
if [ "$1" == "--apk" ]
then
  if [ "$2" == "--dev" ]
  then
     ../gradlew assembleDevRelease
  elif [ "$2" == "--stg" ]
  then
     ../gradlew assembleStgRelease
  elif [ "$2" == "--uat" ]
  then
     ../gradlew assembleUatRelease
  elif [ "$2" == "--prod" ]
  then
     ../gradlew assembleProdRelease
  else
     echo "None of the condition met"
  fi
else
  if [ "$2" == "--dev" ]
  then
     ../gradlew bundleDevRelease
  elif [ "$2" == "--stg" ]
  then
     ../gradlew bundleStgRelease
  elif [ "$2" == "--uat" ]
  then
     ../gradlew bundleUatRelease
  elif [ "$2" == "--prod" ]
  then
     ../gradlew bundleProdRelease
  else
     echo "None of the condition met"
  fi

fi

