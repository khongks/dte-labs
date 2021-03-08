for i in 1 2 3 4 5
do
if (oc get csr | grep -i pending) ; then
   oc get csr | grep -i pending | awk '{print $1}' | xargs oc adm certificate approve
else
   echo "No pending CSRs"
fi
if (oc get nodes | grep NotReady) ; then
    echo "Some nodes are not ready"
else
    echo "All nodes are ready"
    echo "Cluster is healthy"
    break
fi
sleep 10
done

echo "node status"
oc get nodes
echo "node usage"
oc adm top nodes
