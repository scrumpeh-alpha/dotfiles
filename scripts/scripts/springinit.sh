#!/bin/bash

# Configuration & Defaults
URL="https://start.spring.io/starter.zip"
OUTPUT_FILE="starter.zip"

echo "------------------------------------------------"
echo "Spring Initializr CLI Wrapper"
echo "------------------------------------------------"

# 1. Project Type & Language
read -rp "Project Type (maven-project/gradle-project) [default: maven-project]: " type
type=${type:-maven-project}

read -rp "Language (java/kotlin/groovy) [default: java]: " language
language=${language:-java}

read -rp "Spring Boot Version [default: 4.0.1]: " bootVersion
bootVersion=${bootVersion:-4.0.1}

# 2. Project Metadata
read -rp "Group ID [default: com.example]: " groupId
groupId=${groupId:-com.example}

read -rp "Artifact ID [default: demo]: " artifactId
artifactId=${artifactId:-demo}

read -rp "Name (Leave blank to infer from Artifact ID) [example: demo]: " name
# name=${name:-demo}  # OPTIONAL
name=${name:-$artifactId}

read -rp "Application Name (Leave blank to infer from Name) [example: DemoApplication]: " applicationName
# applicationName=${applicationName:-DemoApplication} # OPTIONAL
applicationName=${applicationName:-}

read -rp "Description [default: Demo project for Spring Boot]: " description
description=${description:-"Demo project for Spring Boot"}

read -rp "Package Name (Leave blank to infer from Group/Artifact) [example: com.example.demo]: " packageName
# packageName=${packageName:-com.example.demo} # OPTIONAL
packageName=${packageName:-}

# 3. Build & Environment
read -rp "Packaging (jar/war) [default: jar]: " packaging
packaging=${packaging:-jar}

read -rp "Java Version [default: 17]: " javaVersion
javaVersion=${javaVersion:-17}

read -rp "Version [default: 0.0.1-SNAPSHOT]: " version
version=${version:-0.0.1-SNAPSHOT}

# 4. Customizations
read -rp "Dependencies (comma-separated, e.g., web,data-jpa,lombok) [default: none]: " dependencies
dependencies=${dependencies:-}

read -rp "Base Directory in archive [default: none]: " baseDir
# Leave empty if user doesn't provide one

read -rp "Config Format (properties/yaml) [default: properties]: " configurationFileFormat
configurationFileFormat=${configurationFileFormat:-properties}

echo -e "\n--- Generating Project ---"

# Construct CURL command
# Using an array to handle spaces in names and descriptions correctly
curl_args=(
    -d "type=$type"
    -d "language=$language"
    -d "bootVersion=$bootVersion"
    -d "groupId=$groupId"
    -d "artifactId=$artifactId"
    -d "name=$name"
    # -d "applicationName=$applicationName"
    -d "description=$description"
    # -d "packageName=$packageName"
    -d "packaging=$packaging"
    -d "javaVersion=$javaVersion"
    -d "version=$version"
    -d "configurationFileFormat=$configurationFileFormat"
)

# Only add optional params if they aren't empty
[[ -n "$applicationName" ]] && curl_args+=(-d "applicationName=$applicationName")
[[ -n "$packageName" ]] && curl_args+=(-d "packageName=$packageName")

# Already optional params
[[ -n "$dependencies" ]] && curl_args+=(-d "dependencies=$dependencies")
[[ -n "$baseDir" ]] && curl_args+=(-d "baseDir=$baseDir")

# Execute CURL


# echo "Example CURL: "
# echo "curl "$URL" "${curl_args[@]}" -o "$OUTPUT_FILE""


curl "$URL" "${curl_args[@]}" -o "$OUTPUT_FILE"

if [ $? -eq 0 ]; then
    echo "Successfully downloaded $OUTPUT_FILE"
    read -rp "Would you like to unzip it now? (y/n): " unzip_choice
    if [[ "$unzip_choice" =~ ^[Yy]$ ]]; then
        unzip "$OUTPUT_FILE" -d "$artifactId"
        echo "Project extracted to ./$artifactId"
        rm "$OUTPUT_FILE"
    fi
else
    echo "Failed to download project."
    exit 1
fi
