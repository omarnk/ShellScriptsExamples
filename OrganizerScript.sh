#This script is organizaing files depending on their extentions, creating directories for them and finally moving them.
#!/usr/bin/env bash
images=images
music=music
videos=videos
for file in *
 do
   if [[ $file == *.mp3 ]] || [[ $file == *.flac ]]
   then
     dir="${music}"
     if [[ ! -e $dir ]]; then
       mkdir -- "$dir"
       mv -- "$file" "$dir"
   else
     mv -- "$file" "$dir"
   fi
    elif [[ $file == *.jpg ]] || [[ $file == *.png ]]
    then
      dir="${images}"
      if [[ ! -e $dir ]]; then
        mkdir -- "$dir"
        mv -- "$file" "$dir"
      else
        mv -- "$file" "$dir"
      fi
    elif [[ $file == *.avi ]] || [[ $file == *.mov ]]
    then
      dir="${videos}"
      if [[ ! -e $dir ]]; then
        mkdir -- "$dir"
        mv -- "$file" "$dir"
      else
        mv -- "$file" "$dir"
      fi
    elif [[ $file == *.log ]]
    then
      rm -rf $file
   fi
 done
