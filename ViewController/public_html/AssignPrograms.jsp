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
          <af:panelGroupLayout id="pgl1" layout="vertical" valign="middle">
            <af:panelGridLayout id="pgl2">
              <af:gridRow marginTop="5px" height="auto" id="gr2">
                <af:gridCell marginStart="5px" width="auto" id="gc1">
                  <af:panelHeader text="Current Manager" id="ph1"
                                  inlineStyle="border:1px #e5e5e5 solid">
                    <f:facet name="context"/>
                    <f:facet name="menuBar"/>
                    <f:facet name="toolbar"/>
                    <f:facet name="legend"/>
                    <f:facet name="info"/>
                    <af:panelFormLayout id="pfl1">
                      <af:selectOneChoice value="#{bindings.UserName.inputValue}"
                                          label="#{bindings.UserName.label}"
                                          required="#{bindings.UserName.hints.mandatory}"
                                          shortDesc="#{bindings.UserName.hints.tooltip}"
                                          id="soc1" autoSubmit="true">
                        <f:selectItems value="#{bindings.UserName.items}"
                                       id="si1"/>
                      </af:selectOneChoice>
                      <af:inputText value="#{bindings.ProgramManager.inputValue}"
                                    label="#{bindings.ProgramManager.hints.label}"
                                    required="#{bindings.ProgramManager.hints.mandatory}"
                                    columns="#{bindings.ProgramManager.hints.displayWidth}"
                                    maximumLength="#{bindings.ProgramManager.hints.precision}"
                                    shortDesc="#{bindings.ProgramManager.hints.tooltip}"
                                    id="it1" partialTriggers="soc1"
                                    binding="#{HandlerBean.currentID}">
                        <f:validator binding="#{bindings.ProgramManager.validator}"/>
                      </af:inputText>
                    </af:panelFormLayout>
                  </af:panelHeader>
                </af:gridCell>
                <af:gridCell marginStart="5px" marginEnd="5px" width="auto"
                             id="gc2">
                  <af:panelHeader text="New Manager" id="ph2"
                                  inlineStyle="border:1px #e5e5e5 solid">
                    <f:facet name="context"/>
                    <f:facet name="menuBar"/>
                    <f:facet name="toolbar"/>
                    <f:facet name="legend"/>
                    <f:facet name="info"/>
                    <af:panelFormLayout id="pfl2">
                      <af:inputText value="#{bindings.UserId.inputValue}"
                                    label="#{bindings.UserId.hints.label}"
                                    required="#{bindings.UserId.hints.mandatory}"
                                    columns="#{bindings.UserId.hints.displayWidth}"
                                    maximumLength="#{bindings.UserId.hints.precision}"
                                    shortDesc="#{bindings.UserId.hints.tooltip}"
                                    id="it2" partialTriggers="soc2"
                                    binding="#{HandlerBean.newId}">
                        <f:validator binding="#{bindings.UserId.validator}"/>
                        <af:convertNumber groupingUsed="false"
                                          pattern="#{bindings.UserId.format}"/>
                      </af:inputText>
                      <af:selectOneChoice value="#{bindings.UserName1.inputValue}"
                                          label="#{bindings.UserName1.label}"
                                          required="#{bindings.UserName1.hints.mandatory}"
                                          shortDesc="#{bindings.UserName1.hints.tooltip}"
                                          id="soc2" autoSubmit="true">
                        <f:selectItems value="#{bindings.UserName1.items}"
                                       id="si2"/>
                      </af:selectOneChoice>
                    </af:panelFormLayout>
                  </af:panelHeader>
                </af:gridCell>
              </af:gridRow>
              <af:gridRow marginTop="5px" marginBottom="5px" height="auto"
                          id="gr1">
                <af:gridCell marginStart="5px" marginEnd="5px" width="auto"
                             id="gc4">
                  <af:commandButton text="Update" id="cb1"
                                    action="#{HandlerBean.cb1_action}"/>
                  <af:commandButton text="Cancel" id="cb2"/>
                </af:gridCell>
                <af:gridCell marginStart="5px" width="auto" id="gc3"/>
              </af:gridRow>
            </af:panelGridLayout>
          </af:panelGroupLayout>
        </f:facet>
        <f:facet name="search"/>
      </af:pageTemplate>
    </af:form>
  </af:document>
</f:view>
<%-- 
  oracle-jdev-comment:preferred-managed-bean-name:HandlerBean
--%>