ROOT_DIR=C:\Users\Alona_Pishchulova\IdeaProjects\cqblueprints-example

#cqblueprints-example-view
cd %ROOT_DIR%/cqblueprints-example-view/src/main/content/jcr_root/apps/cqblueprints-example/components
vlt ci --force
cd %ROOT_DIR%/cqblueprints-example-view/src/main/content/jcr_root/apps/cqblueprints-example/templates
vlt ci --force
cd %ROOT_DIR%/cqblueprints-example-view/src/main/content/jcr_root/etc/clientlibs
vlt ci --force
cd %ROOT_DIR%/cqblueprints-example-view/src/main/content/jcr_root/etc/designs/cqblueprints-example
vlt ci --force

#cqblueprints-example-content
cd %ROOT_DIR%/cqblueprints-example-content/src/main/content/jcr_root/content/cqblueprints-example
vlt ci --force
cd %ROOT_DIR%/cqblueprints-example-content/src/main/content/jcr_root/content/dam/cqblueprints-example
vlt ci --force
cd %ROOT_DIR%/cqblueprints-example-content/src/main/content/jcr_root/etc/designs/cqblueprints-example
vlt ci --force
cd %ROOT_DIR%
