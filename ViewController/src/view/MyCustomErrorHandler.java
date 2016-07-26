package view;

import oracle.adf.model.binding.DCBindingContainer;

import oracle.adf.model.binding.DCErrorHandlerImpl;

import java.sql.SQLException;

import oracle.adf.model.BindingContext;

import oracle.adf.model.binding.DCBindingContainer;

import oracle.adf.model.binding.DCErrorHandlerImpl;

import oracle.jbo.JboException;


public class MyCustomErrorHandler extends DCErrorHandlerImpl {

    public MyCustomErrorHandler() {

        this(true);

    }


    public MyCustomErrorHandler(boolean setToThrow) {

        super(setToThrow);

    }


    @Override
    public void reportException(DCBindingContainer dCBindingContainer,

        Exception exception) {

        super.reportException(dCBindingContainer, exception);

    }


    public String getDisplayMessage(BindingContext ctx, Exception ex) {

        String message = ex.getMessage();
        if (message != null) {
            if (message.contains("Another user has changed the row with primary key oracle.jbo.Key")) {
                message = "Another User is Working with this record,Kindly Press Save Again.";
            }else{
                message = ex.getMessage();
            } 
        }else{
            message = "Please Contact I.C.T.";
        }
        

//        if (ex instanceof oracle.jbo.ValidationException) {
//            String msg = ex.getMessage();
//            message =
//                    "Selected Entry has been already entered, please select different entry and then Save";
//        }
//        else
//
//        {
//
//            message = getDisplayMessage(ctx, ex);
//
//        }

        return message;

    }

}
