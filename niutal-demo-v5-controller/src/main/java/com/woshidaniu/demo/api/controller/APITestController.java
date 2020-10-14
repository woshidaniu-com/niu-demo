package com.woshidaniu.demo.api.controller;


import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

/**
 * Created by miaorf on 2016/9/10.
 */

@Api(value = "Test", description = "test the swagger API")
@RestController
public class APITestController {

    @ApiOperation(value = "get city by state", notes = "Get city by state", response = Object.class)
    @ApiResponses(value = {@ApiResponse(code = 405, message = "Invalid input", response = Object.class) })
    @RequestMapping(value = "/city", method = RequestMethod.GET)
    public ResponseEntity<Object>  getCityByState(
            @ApiParam(value = "The id of the city" ,required=true ) @RequestParam String state){
        if (state!=null){
            return new ResponseEntity<Object>(state, HttpStatus.OK);
        }
        return new ResponseEntity<Object>(HttpStatus.INTERNAL_SERVER_ERROR);
    }



}