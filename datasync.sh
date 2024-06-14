
# Assuming why is the network Y:\
# Run on Host machine
# TODO, 
# scp -r  Y:/p1-demo/* dbisadmin@192.43.193.15:~/retrieval-deployments/data/p1-demo

# Run on node
cd ~/retrevial-deployments

# Restore the schemas
schema restore lhe --input=./data/p1-data/dump/lhe/lhe.dump
schema restore v3c --input=./data/p1-data/dump/v3c/v3c.dump
schema restore mvk --input=./data/p1-data/dump/mvk/mvk.dump


