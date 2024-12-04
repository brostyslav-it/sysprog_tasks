Name: files_counter
Version: 1.0
Release: 1%{?dist}
Summary: A script to count files in /etc
License: GPL
Group: Utilities
Source0: files_counter.sh

%description
A simple script that calculates the number of files (excluding directories and links) in the /etc directory.

%prep
:
%build

%install
mkdir -p %{buildroot}/usr/local/bin
install -m 755 %{SOURCE0} %{buildroot}/usr/local/bin/files_counter.sh

%files
/usr/local/bin/files_counter.sh

%changelog
* Wed Dec 4 2024 RostyslavDev <bykhalrostyslav@gmail.com> - 1.0-1
- Initial RPM package