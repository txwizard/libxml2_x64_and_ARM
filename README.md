# LibXML2 for Windows for Intel and ARM Processors ReadMe

__Current Version:__ 2.9.9.0

__Release Date:__ Thursday, 04 April 2019

The purpose of this repository is to publish a port of the famous ZLib (zlib,
for purists - you know who you are) library for creating Zip archives and
extracting files from them to Windows 10 running on ARM processors such as the
Qualcomm Snapdragon series, such as the one inside the Asus ASUS NovaGo TP370QL,
about which you can learn more at
<https://www.asus.com/us/2-in-1-PCs/ASUS-NovaGo-TP370QL/>.

This code incorporates version 1.15, the latest version, of iconv published on
the official site, at <https://www.gnu.org/software/libiconv/>, adding 
configurations for ARM, ARM64, and x64.

For completeness, this repository includes the __Win32__ and x64 (32 and 64 bit
Windows on Intel/AMD) binaries.

## Using These Libraries

Since this project supports simultaneously targeting four platforms from one
code base, the output files having extensions `.dl`l, `.exe`, `.lib`, and `.pdb`,
are differentiated by

| Configuration Platform ID | Hardware Pletform         | Bits | Suffix |
|---------------------------|---------------------------|------|--------|
| Win32                     | Windows on Intel and AMD  |   32 | Win32  |
| x64                       | Windows on Intel and AMD  |   64 | x64    |
| ARM                       | Windows on ARM Processors |   32 | ARM    |
| ARM64                     | Windows on ARM Processors |   64 | ARM64  |

This is the last of four major open source libraries, all of which had to be
converted and tested before this conversion could be put forward. The following
table lists the four libraries, along with URLs for the GitHub repositories in
which you can find the source code.

|Name   | Version | Repository URL
|-------|---------|-------------------------------------------------------|
|zlib   | 1.2.11  | <https://github.com/txwizard/zlib_x64_and_ARM>
|iconv  | 1.15    | <https://github.com/txwizard/iconv_x64_and_ARM>
|LZMA * | 5.3.10  | <https://github.com/txwizard/LZMA_x64_and_ARM>

\* The LZMA library comes by way of the XZ Utilities project
   at <https://tukaani.org/xz/>, since it eventually became evident that the
   maintainers expected that version to be integrated into it.

In addition to the foregoing three OSS libraries, runsiite.exe and the other
unit test programs leverage code in two new libraries of my own devising, both
of which are published as open source projects.

| Name                  | Version | Repository URL
|-----------------------|---------|----------------------------------------------------|
| CRTTime               | 1,0,0,3 | <https://github.com/txwizard/CRTTime>              |
| NativeConssoleAppAids | 1,0,0,4 | <https://github.com/txwizard/NativeConsoleAppAids> |

Since the headers, link library, and dynamic-link library versions of all
dependent libraries are incorporated herein, you need not visit any of the
foregoing repositories to get started with libxml2. Nevertheless, identifying
them herein is intended to spare others the time spent chasing down the original
sources from which these four libraries were built, should you want to build
them from source.

All repositories incorporate test programs that have been built for all
supported platforms. When executed, each program displays its version number,
followed by a message that identifis the platform on which it is executing,
then the current local and UTC machine time. The NativeConssoleAppAids 
unit tests are incomplete, because it was developed alongside __CRTTime__,
which uses most of its routines, and the four open source library ports, all
of which incorporate other routines defined therein into their respective unit
test programs.

## Testing LibXML2

Testing of libxml2 is the most difficult to set up, since the current directory
must contain directory `test` from the repository, because it expects to find
the inputs for its unit tests therein. The simplest way to do so is to copy the
absolute name of the test program, `runsuiteXXX.exe`, where "XXX" is the
platform ID listed in the first table above, into the Windows Clipboard, then
open a command prompt in the directory that contains the test directory, paste
the program name into that window, and hit Enter. Since all required DLLs are in
the program directory, the program can find and load them. In this way, a copy
of the ARM build of each program was successfully tested on a working ARM
computer by copying the output directory onto a flash drive, from which it was
launched directly. Of course, testing libxml required the test directory to be
copied along with the program directory.

## Building it Yourself

If you have any edition of Visual Studio 2017 installed on a 64-bit copy of
Microsoft Windows, and you intend to use only the 64-bit Intel libraries, you
may skip the rest of this section, because the required runtime libraries are
already installed.

Otherwise, please keep reading, especially if your target is an ARM processor,
since the Microsoft C runtime for ARM is tucked away, and finding them took
many searches, spread across about a week, to find a proper package. Moreover,
extracting them from that package requires some specialized knowledge about the
internal format of a NuGet package.

To use these libraries on any supported platform, you must acquire and install
the Microsoft« C Runtime Library, version 14.00.24234.1 or later, called
`vcruntime140.dll` on all platforms. Microsoft distributes it as part of the
"Microsoft Visual C++ 2015 Redistributable Update 3 RC" package, available from
<https://www.microsoft.com/en-us/download/details.aspx?id=52685> for Intel and
AMD CPUs, and from <https://dotnet.myget.org/F/dotnet-core/api/v2/package/vc-runtime/2.0.0/>
for ARM processors.

- The __Intel/AMD__ packages come as self-extracting `EXE` files, one each for
__x86__ (32 bits) and __x64__ (64 bits). Though they are packaged separately, the
download page offers the option of fetching both in one pass. If you take that
option, you should elect to dwonload both, then view the packages in your
`Downloads` folder. This suggestion applies to Edge and Chrome for certain, and
is sound advice for other Web browsers. Though technically self-extracting
archives, manually extracting them makes clear that they are intended to be
executed, so that the executable code embedded therein can reassemble the
numerous bits into a handful of program files before it installs them.

- The __ARM__ package comes as a `.nupkg` that can be renamed to `.zip`, and
treated as an ordinary ZIP archive. Both __ARM__ and __ARM64__ (32 and 64 bit)
runtimes come in one package. To get the goods, extract the archive into a new
directory, and use the file explorer to drill down into it. Inside directory
`content\VC\Redist\MSVC\14.14.26405\onecore` are two subdirectories, helpfully
named `arm` and `arm64`. Unlike the Intel/AMD packages, the __ARM__ package is
a straightforward, if opaque, ZIP archive, and the contents of the two leaf
directories need only to be copied into a directory that is in your __PATH__
list, and they are ready for use.

For those who are interested, the directory structure in the NuGet package
reflects the location into which the files are installed into Visual Studio
when you install the ARM compilers and tools.

To get the tools for Microsoft Visual Studio, start the __Visual Studio Installer__,
which should be on the main list of __Programs__ (not APPs), answer the UAC
prompt, and select the __Modify__ button. Once the form draws itself, select the
__Individual Components__ tab, and scroll down almost to the bottom, where you will
eventually find __Visual C++ compilers and libraries for ARM and ARM64__, listed as
two items. Check either or both, and click __Modify__. When the installer is done,
you are ready to go.