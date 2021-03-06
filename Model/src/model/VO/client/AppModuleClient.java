package model.VO.client;

import model.VO.common.AppModule;

import oracle.jbo.client.remote.ApplicationModuleImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Wed Apr 23 22:51:55 PKT 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class AppModuleClient extends ApplicationModuleImpl implements AppModule {
    /**
     * This is the default constructor (do not remove).
     */
    public AppModuleClient() {
    }

    public void updateRecords(String[] ids) {
        Object _ret =
            this.riInvokeExportedMethod(this,"updateRecords",new String [] {"[Ljava.lang.String;"},new Object[] {ids});
        return;
    }

    public void make_budget_lines(int pid) {
        Object _ret =
            this.riInvokeExportedMethod(this,"make_budget_lines",new String [] {"int"},new Object[] {new Integer(pid)});
        return;
    }
}
