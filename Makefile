kube-logs:
	for kjob in $(shell kubectl get jobs --namespace cj-explorations | grep -v NAME | awk '{print $$1}'); do \
		echo "\nlogs for $$kjob:\n"; \
		kubectl logs job.batch/$$kjob --namespace cj-explorations; \
	done;