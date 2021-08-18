---------------------------------------------
[1] patch by file
---------------------------------------------

Generate patch file:
$ diff -Nau from_file to_file > to_file.patch

Do patch:
$ patch -p0 < to_file.patch

Undo patch:
$ patch -R -p0 < to_file.patch


---------------------------------------------
[2] patch by directory
---------------------------------------------

Generate patch file:
$ diff -Naur from_dir to_dir > to_dir.patch

Do patch:
$ patch -p0 < to_dir.patch

Undo patch:
$ patch -R -p0 < to_dir.patch

