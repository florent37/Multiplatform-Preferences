#!/usr/bin/env bash
./gradlew clean
./gradlew assemble
./gradlew build

./gradlew :multiplatform-preferences-ios:publish
./gradlew :multiplatform-preferences-ios:bintrayUpload
./gradlew :multiplatform-preferences-common:bintrayUpload
./gradlew :multiplatform-preferences-android:bintrayUpload

#./gradlew compileDebugSources
#./gradlew assembleAllIos_arm64
#./gradlew assembleAllIos_x64

#./gradlew javadocJarMain

#./gradlew generateMetadataFileForMavenJavaPublication

#./gradlew generateMetadataFileForMainPublication
#./gradlew generateMetadataFileForMainDebugIos_x64Publication
#./gradlew generateMetadataFileForMainDebugIos_arm64Publication

#./gradlew generatePomFileForMainDebugIos_x64Publication
#./gradlew generatePomFileForMainDebugIos_arm64Publication
#./gradlew generatePomFileForMavenJavaPublication
#./gradlew generatePomFileForMainPublication

#./gradlew generatePomFileForAndroidPublication

#./gradlew sourcesJarMain
#./gradlew sourcesJarMainIos_arm64
#./gradlew sourcesJarMainIos_x64

#./gradlew jar


#./gradlew sourcesJar

#./gradlew publishToMavenLocal


#./gradlew :ios:bintrayUpload
#./gradlew :multiplatform-preferences-common:bintrayUpload
#./gradlew :android:bintrayUpload