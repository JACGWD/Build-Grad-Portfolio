#!/bin/bash

echo "The following command will set the display all (invisible) files on your Mac setting to True. Your screen may blink. This is not dangerous."
defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder

echo "Hello, who am I talking to?"
read  -p 'student: ' varstudent
echo "Let's have fun $varstudent"

echo "$varstudent, where would you like to build your portfolio? By default, you should drag your Bitnami htdocs folder into this window."

read  -p 'path: ' varportfoliopath
cd $varportfoliopath

echo "Please type your first name and last name with no spaces and no capitals. For example: john-smith"
read -p 'Your grad folder name: ' varfoldername

if [[ $varfoldername != *[-]* ]]
then
  echo "Your folder name does not contain a hyphen. Please retype it."
  read -p 'Your grad folder name: ' varfoldername
fi


if [[ $varfoldername == *['!'@#\$%^\&*\(\)_+]* ]]
then
  echo "Your folder name contains illegal characters. Please type only your name and hyphen(s) please."
  read -p 'Your grad folder name: ' varfoldername
fi

echo  "\n\n"
echo " /---------- Creating Current Grads folder ----------- / "
mkdir current-grads
cd current-grads

echo "Creating your folder"
mkdir $varfoldername
cd $varfoldername
sleep 0.5

echo  "\n\n"
echo " /---------- Creating PHP application folder and files ----------- / "
mkdir .conf
cd .conf
touch index.php config.conf
mkdir themes
cd themes
mkdir default
cd default
mkdir css js inc templates
pwd
ls -l
echo "Building the PHP application folder and files completed successfully"
cd ../../../
sleep 0.5


echo  "\n\n"
echo " /---------- Creating PHP pages and subfolders ----------- / "
touch index.php about.php portfolio.php resume.php
mkdir blog
cd blog
touch index.php
pwd
ls -l
echo "<?php \n\n //install wordpress here \n\n ?>" >> index.php
cd ..
sleep 0.5

echo   "\n\n"
echo " /---------- Creating Comprehensive Assessment folder and pages ----------- / "
touch comprehensive-assessment.php
mkdir ca
cd ca
touch index.php advertising-material-2.php advertising-material.php animation.php before-and-after-retouching.php book-chapter.php brochure-with-complex-alignments.php catalog.php complete-stationery-set.php creative-photography.php dust-jacket.php ebook.php facebook-retail-banner.php formatting-a-web-page-for-optimized-sharing.php infographic.php logo-collage.php lookbook-with-original-photography-and-illustration.php magazine-cover-with-original-photography-and-or-illustration.php magazine.php mockup-web-site-design.php newsletter.php packaging.php photo-retouching.php poster-with-full-page-illustration-art.php print-newsletter.php responsive-email.php web-form-with-complex-alignments.php wordpress-front-end-design-css.php
pwd
ls -l
echo "Building the Comprehensive Assessment folder completed successfully"
cd ..
sleep 0.5

echo   "\n\n"
echo " /---------- Creating Contact folder and pages ----------- / "
touch contact.php
mkdir contact
cd contact
touch index.php error.php thank-you.php
echo "<?php \n\n //Visit https://www.thesitewizard.com/wizards/feedbackform.shtml to get a working sendmail PHP script \n\n ?>" >> index.php
pwd
ls -l
echo "Building the Contact folder and pages completed successfully"
cd ..
sleep 0.5


echo   "\n\n"
echo " /---------- Creating Graphic Design portfolio folder and sample pages ----------- / "
mkdir graphic-design
cd graphic-design
touch index.php acme-business-card.php acme-complete-stationary-set.php
pwd
ls -l
echo "Building the Graphic Design portfolio folder and sample pages completed successfully"
cd ..
sleep 0.5

echo   "\n\n"
echo " /---------- Creating img folder and sample images ----------- / "
mkdir img
cd img
touch index.php sample-acme-business-card.png sample-web-mockup.jpg
pwd
ls -l
echo "img folder and sample images completed successfully"
cd ..
sleep 0.5

echo   "\n\n"
echo " /---------- Creating Web Design portfolio folder and sample pages ----------- / "
mkdir web-design
cd web-design
touch index.php php-project.php sample-ecommerce-mockups.php sample-personal-web-site.php sample-wordpress-interface.php
pwd
ls -l
echo "Building the Web Design portfolio folder and sample pages completed successfully"
sleep 0.5

echo "\n\n"
echo "Note that most of the above files are empty. You must add all the code."
echo Done.