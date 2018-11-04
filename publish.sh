#!/usr/bin/env bash
./gradlew clean
./gradlew build

#./gradlew javadocJarMain

./gradlew generatePomFileForMavenJavaPublication
./gradlew generatePomFileForMainPublication
./gradlew :multiplatform-preferences-common:bintrayUpload

#./gradlew sourcesJarMain
#./gradlew sourcesJarMainIos_arm64
#./gradlew sourcesJarMainIos_x64

#./gradlew generatePomFileForMainPublication
#./gradlew generateMetadataFileForMainPublication
#./gradlew generatePomFileForMainDebugIos_x64Publication
#./gradlew generateMetadataFileForMainDebugIos_x64Publication
#./gradlew generatePomFileForMainDebugIos_arm64Publication
#./gradlew generateMetadataFileForMainDebugIos_arm64Publication
#./gradlew :ios:bintrayUpload

./gradlew generatePomFileForAndroidPublication
./gradlew :android:bintrayUpload