<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:pageTemplate viewId="/AppTemplate.jspx" id="pt1">
        <f:facet name="content">
          <af:panelGroupLayout id="pgl1" layout="scroll"
                               inlineStyle="padding-left:18.0px; padding-right:18.0px;margin-top:8px">
            <af:panelBox text="New Program" id="pb1" background="medium">
              <f:facet name="toolbar"/>
              <af:panelFormLayout id="pfl1">
                <af:inputText value="#{bindings.CustAcctId.inputValue}"
                              label="#{bindings.CustAcctId.hints.label}"
                              required="#{bindings.CustAcctId.hints.mandatory}"
                              columns="#{bindings.CustAcctId.hints.displayWidth}"
                              maximumLength="#{bindings.CustAcctId.hints.precision}"
                              shortDesc="#{bindings.CustAcctId.hints.tooltip}"
                              partialTriggers="customerNameId" id="it4"
                              visible="false">
                  <f:validator binding="#{bindings.CustAcctId.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.CustAcctId.format}"/>
                </af:inputText>
                <af:inputText value="#{bindings.ProgramId.inputValue}"
                              label="#{bindings.ProgramId.hints.label}"
                              required="#{bindings.ProgramId.hints.mandatory}"
                              columns="#{bindings.ProgramId.hints.displayWidth}"
                              maximumLength="#{bindings.ProgramId.hints.precision}"
                              shortDesc="#{bindings.ProgramId.hints.tooltip}"
                              id="it1" visible="false">
                  <f:validator binding="#{bindings.ProgramId.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.ProgramId.format}"/>
                </af:inputText>
                <af:inputText value="#{bindings.ProgramManager.inputValue}"
                              label="#{bindings.ProgramManager.hints.label}"
                              required="#{bindings.ProgramManager.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.ProgramManager.hints.precision}"
                              shortDesc="#{bindings.ProgramManager.hints.tooltip}"
                              readOnly="true"
                              contentStyle="color:red; font-weight:bold"
                              id="it3" visible="false">
                  <f:validator binding="#{bindings.ProgramManager.validator}"/>
                </af:inputText>
                <af:inputText value="#{bindings.ProgramName.inputValue}"
                              label="#{bindings.ProgramName.hints.label}"
                              required="#{bindings.ProgramName.hints.mandatory}"
                              columns="25"
                              maximumLength="#{bindings.ProgramName.hints.precision}"
                              shortDesc="#{bindings.ProgramName.hints.tooltip}"
                              id="it2">
                  <f:validator binding="#{bindings.ProgramName.validator}"/>
                </af:inputText>
                <af:selectOneChoice value="#{bindings.ProgramPhase.inputValue}"
                                    label="#{bindings.ProgramPhase.label}"
                                    required="#{bindings.ProgramPhase.hints.mandatory}"
                                    shortDesc="#{bindings.ProgramPhase.hints.tooltip}"
                                    id="soc1">
                  <f:selectItems value="#{bindings.ProgramPhase.items}"
                                 id="si1"/>
                </af:selectOneChoice>
                <af:inputListOfValues id="customerNameId"
                                      popupTitle="Search and Select: #{bindings.CustomerName.hints.label}"
                                      value="#{bindings.CustomerName.inputValue}"
                                      label="#{bindings.CustomerName.hints.label}"
                                      model="#{bindings.CustomerName.listOfValuesModel}"
                                      required="#{bindings.CustomerName.hints.mandatory}"
                                      columns="#{bindings.CustomerName.hints.displayWidth}"
                                      shortDesc="#{bindings.CustomerName.hints.tooltip}">
                  <f:validator binding="#{bindings.CustomerName.validator}"/>
                </af:inputListOfValues>
                <af:inputText value="#{bindings.PhaseName.inputValue}"
                              label="#{bindings.PhaseName.hints.label}"
                              required="#{bindings.PhaseName.hints.mandatory}"
                              columns="#{bindings.PhaseName.hints.displayWidth}"
                              maximumLength="#{bindings.PhaseName.hints.precision}"
                              shortDesc="#{bindings.PhaseName.hints.tooltip}"
                              id="it5" visible="false">
                  <f:validator binding="#{bindings.PhaseName.validator}"/>
                </af:inputText>
                <f:facet name="footer">
                  <af:panelGroupLayout id="p" layout="vertical">
                    <af:panelGroupLayout layout="horizontal" id="pgl2">
                      <f:facet name="separator">
                        <af:spacer width="10" height="1" id="s1"/>
                      </f:facet>
                      <af:commandButton actionListener="#{bindings.First.execute}"
                                        text="First"
                                        disabled="#{!bindings.First.enabled}"
                                        partialSubmit="true" id="cb2"
                                        icon="/images/f.png"
                                        inlineStyle="width:65px; text-align:center;"/>
                      <af:commandButton actionListener="#{bindings.Previous.execute}"
                                        text="Previous"
                                        disabled="#{!bindings.Previous.enabled}"
                                        partialSubmit="true" id="cb4"
                                        icon="/images/p.png"
                                        inlineStyle="width:65px; text-align:center;"/>
                      <af:commandButton actionListener="#{bindings.Next.execute}"
                                        text="Next"
                                        disabled="#{!bindings.Next.enabled}"
                                        partialSubmit="true" id="cb1"
                                        icon="/images/n.png"
                                        inlineStyle="width:65px; text-align:center;"/>
                      <af:commandButton actionListener="#{bindings.Last.execute}"
                                        text="Last"
                                        disabled="#{!bindings.Last.enabled}"
                                        partialSubmit="true" id="cb3"
                                        icon="/images/l.png"
                                        inlineStyle="width:65px; text-align:center;"/>
                    </af:panelGroupLayout>
                    <af:panelGroupLayout id="pgl3" layout="horizontal">
                      <f:facet name="separator">
                        <af:spacer width="10" height="1" id="s2"/>
                      </f:facet>
                      <af:commandButton actionListener="#{bindings.Create.execute}"
                                        text="New"
                                        disabled="#{!bindings.Create.enabled}"
                                        id="cb5" icon="/images/new_icon.png"
                                        inlineStyle="width:65px; text-align:center;"/>
                      <af:commandButton text="Save" id="cb6"
                                        action="#{HandlerBean.cb6_action}"
                                        icon="/images/save.png"
                                        inlineStyle="width:65px; text-align:center;"/>
                      <af:commandButton actionListener="#{bindings.Rollback.execute}"
                                        text="Cancel"
                                        immediate="true" id="cb7"
                                        inlineStyle="width:65px; text-align:center;"
                                        icon="/images/cancel.png">
                        <af:resetActionListener/>
                      </af:commandButton>
                      <af:commandButton actionListener="#{bindings.Delete.execute}"
                                        text="Delete"
                                        disabled="#{!bindings.Delete.enabled}"
                                        id="cb8" icon="/images/del.png"
                                        inlineStyle="width:65px; text-align:center;"/>
                    </af:panelGroupLayout>
                  </af:panelGroupLayout>
                </f:facet>
              </af:panelFormLayout>
            </af:panelBox>
            <af:panelBox text="View Programs" id="pb2" background="medium">
              <f:facet name="toolbar"/>
              <af:table value="#{bindings.VO_XXSalesPlanningProgram1.collectionModel}"
                        var="row"
                        rows="#{bindings.VO_XXSalesPlanningProgram1.rangeSize}"
                        emptyText="#{bindings.VO_XXSalesPlanningProgram1.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.VO_XXSalesPlanningProgram1.rangeSize}"
                        rowBandingInterval="0"
                        filterModel="#{bindings.VO_XXSalesPlanningProgram1Query.queryDescriptor}"
                        queryListener="#{bindings.VO_XXSalesPlanningProgram1Query.processQuery}"
                        filterVisible="true" varStatus="vs"
                        selectionListener="#{bindings.VO_XXSalesPlanningProgram1.collectionModel.makeCurrent}"
                        rowSelection="multiple" id="t1"
                        partialTriggers="::cb2 ::cb4 ::cb1 ::cb3 ::cb5 ::cb8"
                        width="100%">
                <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.label}"
                           id="c5" visible="false">
                  <af:inputText value="#{row.bindings.CustAcctId.inputValue}"
                                label="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.label}"
                                required="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.mandatory}"
                                columns="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.displayWidth}"
                                maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.precision}"
                                shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.tooltip}"
                                id="it9">
                    <f:validator binding="#{row.bindings.CustAcctId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_XXSalesPlanningProgram1.hints.CustAcctId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.label}"
                           id="c4" visible="false">
                  <af:inputText value="#{row.bindings.ProgramId.inputValue}"
                                label="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.label}"
                                required="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.mandatory}"
                                columns="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.displayWidth}"
                                maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.precision}"
                                shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.tooltip}"
                                id="it6">
                    <f:validator binding="#{row.bindings.ProgramId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramManager.name}"
                           filterable="true" sortable="true"
                           
                           headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramManager.label}"
                           id="c2" filterFeatures="caseInsensitive" width="105">
                  <af:inputText value="#{row.bindings.PrgManager.inputValue}"
                                label="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.label}"
                                required="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.mandatory}"
                                columns="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.displayWidth}"
                                maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.precision}"
                                shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.PrgManager.tooltip}"
                                id="it10" readOnly="true">
                    <f:validator binding="#{row.bindings.PrgManager.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.label}"
                           id="c1" filterFeatures="caseInsensitive" width="105">
                  <af:inputText value="#{row.bindings.ProgramName.inputValue}"
                                label="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.label}"
                                required="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.mandatory}"
                                columns="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.displayWidth}"
                                maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.precision}"
                                shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramName.tooltip}"
                                id="it8" readOnly="true">
                    <f:validator binding="#{row.bindings.ProgramName.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramPhase.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramPhase.label}"
                           id="c6" filterFeatures="caseInsensitive" width="106">
                  <af:selectOneChoice value="#{row.bindings.ProgramPhase.inputValue}"
                                      label="#{row.bindings.ProgramPhase.label}"
                                      required="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramPhase.mandatory}"
                                      shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.ProgramPhase.tooltip}"
                                      id="soc2" readOnly="true">
                    <f:selectItems value="#{row.bindings.ProgramPhase.items}"
                                   id="si2"/>
                  </af:selectOneChoice>
                </af:column>
                <af:column sortProperty="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.name}"
                           filterable="true" sortable="true"
                           filterFeatures="caseInsensitive"
                           headerText="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.label}"
                           id="c3" width="300">
                  <af:inputText value="#{row.bindings.CustomerName.inputValue}"
                                label="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.label}"
                                required="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.mandatory}"
                                columns="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.displayWidth}"
                                maximumLength="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.precision}"
                                shortDesc="#{bindings.VO_XXSalesPlanningProgram1.hints.CustomerName.tooltip}"
                                id="it7" readOnly="true">
                    <f:validator binding="#{row.bindings.CustomerName.validator}"/>
                  </af:inputText>
                </af:column>
              </af:table>
            </af:panelBox>
          </af:panelGroupLayout>
        </f:facet>
      </af:pageTemplate>
    </af:form>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:preferred-managed-bean-name:HandlerBean--%>