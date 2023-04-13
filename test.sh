clone_url=https://dev.azure.com/ashishbhatt0517/2nd%20project/_git/demooo
Authenticated_clone_url=${clone_url/\/\////$AZURE_DEVOPS_EXT_PAT@}
git clone --branch main --depth 1 "${authenticated_clone_url}" "${temporary_folder_path}"