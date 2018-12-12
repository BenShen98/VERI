#img copy
srcs=(part_1 part_2 part_3 part_4)

mkdir -p oralImg

for src in ${srcs[*]}; do
  if [ -d ./${src}/img ]; then
    for f in ./${src}/img/*.*; do
      cp ${f} oralImg/${src}_$(basename -- ${f} )
    done
  fi
done
