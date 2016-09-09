#!/bin/sh

UNIVERSAL_OUTPUTFOLDER=../build/

# 创建输出目录，并删除之前的framework文件
mkdir -p "${UNIVERSAL_OUTPUTFOLDER}"
rm -rf "${UNIVERSAL_OUTPUTFOLDER}/${PROJECT_NAME}.framework"

# 步骤 1. 分别编译模拟器和真机的Framework
xcodebuild -target "${PROJECT_NAME}" ONLY_ACTIVE_ARCH=NO -configuration ${CONFIGURATION} -sdk iphoneos  BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" clean build
xcodebuild -target "${PROJECT_NAME}" ONLY_ACTIVE_ARCH=NO -configuration ${CONFIGURATION} -sdk iphonesimulator BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" clean build

# 步骤 2. 拷贝framework到univer目录
cp -R "${BUILD_DIR}/${CONFIGURATION}-iphoneos/${PROJECT_NAME}.framework" "${UNIVERSAL_OUTPUTFOLDER}/"

# 步骤 3. 合并framework，输出最终的framework到build目录
lipo -create -output "${UNIVERSAL_OUTPUTFOLDER}/${PROJECT_NAME}.framework/${PROJECT_NAME}" "${BUILD_DIR}/${CONFIGURATION}-iphonesimulator/${PROJECT_NAME}.framework/${PROJECT_NAME}" "${BUILD_DIR}/${CONFIGURATION}-iphoneos/${PROJECT_NAME}.framework/${PROJECT_NAME}"
