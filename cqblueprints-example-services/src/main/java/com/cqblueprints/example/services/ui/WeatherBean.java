package com.cqblueprints.example.services.ui;

//import com.cognifide.slice.cq.qualifier.CurrentPage;
import com.cognifide.slice.mapper.annotation.JcrProperty;
import com.cognifide.slice.mapper.annotation.SliceResource;
import com.cqblueprints.example.services.GoodbyeWorldService;
import com.google.inject.Inject;
//import com.day.cq.wcm.api.Page;
/**
 * Example OSGi service using SCR annotations.
 */

@SliceResource
public class WeatherBean {
    @JcrProperty
    private String title;

//    @Inject
//    @CurrentPage
//    private Page currentPage;

    @Inject
    private GoodbyeWorldService goodbyeWorldService;

    public WeatherBean() {
    }

    public String getTitle() {
        return this.title;
    }

    public String getMessageFromService() {
        return goodbyeWorldService.getMessage("Example of Slice Bean and Service collaboration");
    }
}
