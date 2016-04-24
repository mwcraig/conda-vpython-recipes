# OMG I have to convert line endings...

dos2unix site-packages/vidle2/PyShell.py
dos2unix site-packages/vidle2/idle.py

# ...sp that I can patch.

patch -p0 -i $RECIPE_DIR/pyshell-pythonw.patch
patch -p0 -i $RECIPE_DIR/idle.patch

# Force a stupid script in. This is a bad way to do it

cat <<EOF > foo
#!$PREFIX/bin/python
EOF

cat foo site-packages/vidle2/vidle > $PREFIX/bin/vidle
chmod +x $PREFIX/bin/vidle
rm foo

# And now we can install :)

python setup.py install
