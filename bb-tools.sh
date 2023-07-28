#!/bin/bash

# Check if Go is installed
if ! command -v go &> /dev/null
then
    # Go is not installed
    echo -e "\033[31mNot found the GoLang\033[0m"
    # Install Go
    echo "Installing Go..."
    sudo apt update
    sudo apt install -y golang
else
    # Go is installed
    echo -e "\033[32mFound it\033[0m"
fi

# Install Go packages
echo "Installing Go packages..."
echo -e "\033[33m1 - waybackurls\033[0m"
go install github.com/tomnomnom/waybackurls@latest && echo -e "\033[32mInstalled waybackurls\033[0m"
echo -e "\033[33m2 - httpx\033[0m"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest && echo -e "\033[32mInstalled httpx\033[0m"
echo -e "\033[33m3 - gf\033[0m"
go get -u github.com/tomnomnom/gf && echo -e "\033[32mInstalled gf\033[0m"
echo -e "\033[33m4 - assetfinder\033[0m"
go get -u github.com/tomnomnom/assetfinder && echo -e "\033[32mInstalled assetfinder\033[0m"
echo -e "\033[33m5 - subfinder\033[0m"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest && echo -e "\033[32mInstalled subfinder\033[0m"
echo -e "\033[33m6 - subjs\033[0m"
GO111MODULE=on go get -u -v github.com/lc/subjs@latest && echo -e "\033[32mInstalled subjs\033[0m"
echo -e "\033[33m7 - nuclei\033[0m"
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest && echo -e "\033[32mInstalled nuclei\033[0m"

# Check for errors and fix if necessary
if [ -f "go.mod" ]
then
    echo "go.mod file detected. Running 'go env -w GO111MODULE=off'..."
    go env -w GO111MODULE=off
    echo -e "\033[33m1 - waybackurls\033[0m"
    go install github.com/tomnomnom/waybackurls@latest && echo -e "\033[32mInstalled waybackurls\033[0m"
    echo -e "\033[33m2 - httpx\033[0m"
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest && echo -e "\033[32mInstalled httpx\033[0m"
    echo -e "\033[33m3 - gf\033[0m"
    go get -u github.com/tomnomnom/gf && echo -e "\033[32mInstalled gf\033[0m"
    echo -e "\033[33m4 - assetfinder\033[0m"
    go get -u github.com/tomnomnom/assetfinder && echo -e "\033[32mInstalled assetfinder\033[0m"
    echo -e "\033[33m5 - subfinder\033[0m"
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest && echo -e "\033[32mInstalled subfinder\033[0m"
    echo -e "\033[33m6 - subjs\033[0m"
    GO111MODULE=on go get -u -v github.com/lc/subjs@latest && echo -e "\033[32mInstalled subjs\033[0m"
    echo -e "\033[33m7 - nuclei\033[0m"
    go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest && echo -e "\033[32mInstalled nuclei\033[0m"
fi

# Print "Done" in green color
echo -e "\033[32mDone\033[0m"
