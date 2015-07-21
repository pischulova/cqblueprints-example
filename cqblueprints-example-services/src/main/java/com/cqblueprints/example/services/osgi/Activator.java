package com.cqblueprints.example.services.osgi;

import java.util.ArrayList;
import java.util.List;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.cognifide.slice.api.context.ContextScope;
import com.cognifide.slice.api.injector.InjectorRunner;
import com.cognifide.slice.commons.SliceModulesFactory;
import com.cognifide.slice.core.internal.context.SliceContextScope;
import com.cognifide.slice.cq.module.CQModulesFactory;
import com.cognifide.slice.validation.ValidationModulesFactory;
import com.google.inject.Module;

/**
 * Bundle activator for com.cqblueprints.example - cqblueprints-example-services.
 */
public class Activator implements BundleActivator {

    private static final Logger LOG = LoggerFactory.getLogger(Activator.class);

    private static final String BUNDLE_NAME_FILTER = "com\\.cqblueprints\\.example\\.services\\..*";
    private static final String BASE_PACKAGE = "com.cqblueprints.example.services";
    private static final String INJECTOR_NAME = "cqblueprints-example";

    @Override
    public void start(BundleContext bundleContext) throws Exception {
        final ContextScope scope = new SliceContextScope();
        final InjectorRunner runner = new InjectorRunner(bundleContext, INJECTOR_NAME, scope);

        List<Module> sliceModules = SliceModulesFactory.createModules(bundleContext, INJECTOR_NAME,
                BUNDLE_NAME_FILTER, BASE_PACKAGE);
        List<Module> cqModules = CQModulesFactory.createModules();
        List<Module> validationModules = ValidationModulesFactory.createModules();
        final List<Module> customModules = createCustomModules();
        runner.installModules(sliceModules);
        runner.installModules(cqModules);
        runner.installModules(validationModules);
        runner.installModules(customModules);

        runner.start();
    }

    @Override
    public void stop(BundleContext bundleContext) throws Exception {

    }

    private List<Module> createCustomModules() {
        List<Module> applicationModules = new ArrayList<Module>();
        //applicationModules.add();
        return applicationModules;
    }
}
