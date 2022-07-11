#! /bin/bash
base_path=$(pwd)
exit_code=0
link_errors=""
while IFS= read -r -d $'\0' file; do    
    link_check_result=$(node_modules/markdown-link-check/markdown-link-check -c .github/markdown-link-check-config.json $file 2>&1)
    link_check_exit_code=$?
    # echo "$link_check_result"
    if [ "$link_check_exit_code" == 1 ]; then
        link_check_errors=$(echo "$link_check_result" | grep -A999999999 'ERROR:' | tail -n +2)
        exit_code=1
        link_errors=$(printf "$link_errors\n\n$file\n$link_check_errors")
        relative_file=$(realpath --relative-to="$base_path" "$file")
        # special output for problem matcher
        link_errors_for_annotation=""
        echo "$relative_file"
        echo "$link_check_errors"
        while IFS= read -r link_error; do
            # echo "ERROR:$file:$link_error"
            # echo "$relative_file"
            link_errors_for_annotation=$(echo -n "$link_errors_for_annotation$link_error %0A")
            # echo "::error file=$relative_file,line=0,col=0::A link in this file seems to be broken.%0A$link_error"
        done < <(echo "$link_check_errors")
        echo "::error file=$relative_file,line=0,col=0::One or more links in this file seems to be broken. %0A$link_errors_for_annotation"

     fi
done < <(find \. -name '*.md' -not -path "./node_modules/*" -print0) # use null seperator to allow for spaces in filename
exit $exit_code 
