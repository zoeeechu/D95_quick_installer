#!/bin/bash

#print in yellow
pYellow() {
   printf "\e[33;1m%s\n" "$1"
}

#print in green
pGreen() {
   printf "\e[32m$1\e[m\n"
}

#print in red
pRed() {
   echo -e "\033[1;31m$1\033[0m"
}

#reset colors
r() {
   tput init
}

#if not root throw error
if [ $USER != "root" ]; then
   pRed "please run this script as root"
   exit
fi

#Get DIR
BASEDIR=$(dirname $0)

#say stuff before doing install
pRed "NOTE: THIS SCRIPT DOESNT HAVE SUPPORT FOR ALL MACOSX VERSIONS YET"

option="${1}"
case ${option} in
-up)

   case "${OSTYPE:6}" in
   "14")
     # echo "Yosemite"
      pRed "This device is not Supported yet.."
      ;;
   "15")
     # echo "El Capitan"
      pRed "This device is not Supported yet.."
      ;;
   "16")
     # echo "Sierra"
      pRed "This device is not Supported yet.."
      ;;
   "17")
     # echo "High Sierra"
      pRed "This device is not Supported yet.."
      ;;
   "18")
     # echo "Mojave"
      pRed "This device is not Supported yet.."
      ;;
   "19")
      pGreen "Installing Xerox_D95 Printer Driver for MACOS Catalina..."
      pYellow "All lpadmin Warnings can be safely ignored."
      r
      cd ${BASEDIR}
      lpadmin -p Xerox_D95 -L "PhotoCopier Room" -E -v lpd://192.168.0.10 -P "PPD/Catalina_Xerox_D95.ppd" -o printer-is-shared=false -o XRTrays=FiveTraysHCTT -o XRFinisher=SBFinisher -o XRHolePunch=23Unit -o sides=one-sided -o XRJobStorage=true -o XRBannerSheet=none -o XRAccountingSystem=None
      pGreen "Installed :>"
      r
      ;;
   "20")
      pGreen "Installing Xerox_D95 Printer Driver for MACOS Big Sur..."
      pYellow "All lpadmin Warnings can be safely ignored."
      r
      cd ${BASEDIR}
      lpadmin -p Xerox_D95 -L "PhotoCopier Room" -E -v lpd://192.168.0.10 -P "PPD/BigSur_Xerox_D95.ppd" -o printer-is-shared=false -o XRTrays=FiveTraysHCTT -o XRFinisher=SBFinisher -o XRHolePunch=23Unit -o sides=one-sided -o XRJobStorage=true -o XRBannerSheet=none -o XRAccountingSystem=None
      pGreen "Installed :>"
      r
      ;;
   "21")
      pGreen "Installing Xerox_D95 Printer Driver for MACOS Monterey..."
      pYellow "All lpadmin Warnings can be safely ignored."
      r
      cd ${BASEDIR}
      lpadmin -p Xerox_D95 -L "PhotoCopier Room" -E -v lpd://192.168.0.10 -P "PPD/Monterey_Xerox_D95.ppd" -o printer-is-shared=false -o XRTrays=FiveTraysHCTT -o XRFinisher=SBFinisher -o XRHolePunch=23Unit -o sides=one-sided -o XRJobStorage=true -o XRBannerSheet=none -o XRAccountingSystem=None
      pGreen "Installed :>"
      r
      ;;
   "22")
      pRed "This computer is On MACOS Ventura it is in BETA and doesnt have a driver :("
      ;;
   esac

   ;;
-dwn)
   case "${OSTYPE:6}" in
   "14")
      #echo "Yosemite"
      pRed "This device is not Supported yet.."
      ;;
   "15")
     #echo "El Capitan"
      pRed "This device is not Supported yet.."
      ;;
   "16")
      #echo "Sierra"
      pRed "This device is not Supported yet.."
      ;;
   "17")
      #echo "High Sierra"
      pRed "This device is not Supported yet.."
      ;;
   "18")
      #echo "Mojave"
      pRed "This device is not Supported yet.."
      ;;
   "19")
      pGreen "Installing Xerox_D95A Printer Driver for MACOS Catalina..."
      pYellow "All lpadmin Warnings can be safely ignored."
      r
      cd ${BASEDIR}
      lpadmin -p Xerox_D95A -L "Staff Room" -E -v lpd://192.168.0.12 -P "PPD/Catalina_Xerox_D95.ppd" -o printer-is-shared=false -o XRTrays=FiveTraysHCTT -o XRFinisher=SBFinisher -o XRHolePunch=23Unit -o sides=one-sided -o XRJobStorage=true -o XRBannerSheet=none -o XRAccountingSystem=None
      pGreen "Installed :>"
      r
      ;;
   "20")
      pGreen "Installing Xerox_D95A Printer Driver for MACOS Big Sur..."
      pYellow "All lpadmin Warnings can be safely ignored."
      r
      cd ${BASEDIR}
      lpadmin -p Xerox_D95A -L "Staff Room" -E -v lpd://192.168.0.12 -P "PPD/BigSur_Xerox_D95.ppd" -o printer-is-shared=false -o XRTrays=FiveTraysHCTT -o XRFinisher=SBFinisher -o XRHolePunch=23Unit -o sides=one-sided -o XRJobStorage=true -o XRBannerSheet=none -o XRAccountingSystem=None
      pGreen "Installed :>"
      r
      ;;
   "21")
      pGreen "Installing Xerox_D95A Printer Driver for MACOS Monterey..."
      pYellow "All lpadmin Warnings can be safely ignored."
      r
      cd ${BASEDIR}
      lpadmin -p Xerox_D95A -L "Staff Room" -E -v lpd://192.168.0.12 -P "PPD/Monterey_Xerox_D95.ppd" -o printer-is-shared=false -o XRTrays=FiveTraysHCTT -o XRFinisher=SBFinisher -o XRHolePunch=23Unit -o sides=one-sided -o XRJobStorage=true -o XRBannerSheet=none -o XRAccountingSystem=None
      pGreen "Installed :>"
      r
      ;;
   "22")
      pRed "This computer is On MACOS Ventura it is in BETA and doesnt have a driver :("
      ;;
   esac

   ;;

*)
   pYellow "$(basename ${0}):usage: [-up] | [-down]"
   r
   exit 1 # Command to come out of the program with status 1
   ;;
esac

<<version
${OSTYPE:6} 
El Capitan = 15 
Sierra = 16 
High Sierra = 17 
Mojave = 18 
Catalina = 19 
Big Sur = 20 
Monterey = 21
Ventura = 22
version

# echo ${OSTYPE:6}
