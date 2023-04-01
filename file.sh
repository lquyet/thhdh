echo "Creating groups g1, g2, g3, g4"
groupadd g1
groupadd g2
groupadd g3
groupadd g4

echo "Adding 3 different users to each group"
useradd -g g1 a1
useradd -g g1 a2
useradd -g g1 a3

useradd -g g2 b1
useradd -g g2 b2
useradd -g g2 b3

useradd -g g3 c1
useradd -g g3 c2
useradd -g g3 c3

useradd -g g4 d1
useradd -g g4 d2
useradd -g g4 d3

echo "Creating 3 folders f1, f2, f3"
mkdir f1 f2 f3
ls -l

echo "Setting permissions for g1"
setfacl -m group:g1:rw- f1/
setfacl -m group:g1:r-- f2/
setfacl -m group:g1:--- f3/

echo "Setting permissions for g2"
setfacl -m group:g2:--- f1/
setfacl -m group:g2:rw- f2/
setfacl -m group:g2:r-- f3/

echo "Setting permissions for g3"
setfacl -m group:g3:r-- f1/ f2/ f3/

echo "Setting permissions for g4"
setfacl -m group:g4:rw- f1/ f2/ f3/

echo "---------Result-------"
getfacl f1/
getfacl f2/
getfacl f3/
