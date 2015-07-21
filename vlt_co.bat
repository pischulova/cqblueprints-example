# cd jcr_root

#cqblueprints-example-view
vlt co --force http://localhost:4502/crx/-/jcr:root/apps/cqblueprints-example/component ./cqblueprints-example-view/src/main/content/jcr_root/apps/cqblueprints-example/components
vlt co --force http://localhost:4502/crx/-/jcr:root/apps/cqblueprints-example/templates ./cqblueprints-example-view/src/main/content/jcr_root/apps/cqblueprints-example/templates
vlt co --force http://localhost:4502/crx/-/jcr:root/etc/clientlibs ./cqblueprints-example-view/src/main/content/jcr_root/etc/clientlibs
vlt co --force http://localhost:4502/crx/-/jcr:root/etc/designs/cqblueprints-example ./cqblueprints-example-view/src/main/content/jcr_root/etc/designs/cqblueprints-example

#cqblueprints-example-content
vlt co --force http://localhost:4502/crx/-/jcr:root/content/cqblueprints-example ./cqblueprints-example-content/src/main/content/jcr_root/content/cqblueprints-example
vlt co --force http://localhost:4502/crx/-/jcr:root/content/dam/cqblueprints-example ./cqblueprints-example-content/src/main/content/jcr_root/content/dam/cqblueprints-example
vlt co --force http://localhost:4502/crx/-/jcr:root/etc/designs/cqblueprints-example ./cqblueprints-example-content/src/main/content/jcr_root/etc/designs/cqblueprints-example
