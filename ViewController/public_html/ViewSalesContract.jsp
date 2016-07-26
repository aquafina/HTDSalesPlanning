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
                               inlineStyle="padding-left:18px; padding-right:18px;">
            <af:panelGroupLayout layout="vertical" id="pgl2"
                                 inlineStyle="margin-bottom:10.0px">
              <af:panelHeader text=" " id="ph1">
                <af:query id="qryId1" headerText="Search" disclosed="false"
                          value="#{bindings.VOXXSalesPlanningHeaderMgtCriteriaQuery.queryDescriptor}"
                          model="#{bindings.VOXXSalesPlanningHeaderMgtCriteriaQuery.queryModel}"
                          queryListener="#{bindings.VOXXSalesPlanningHeaderMgtCriteriaQuery.processQuery}"
                          queryOperationListener="#{bindings.VOXXSalesPlanningHeaderMgtCriteriaQuery.processQueryOperation}"
                          resultComponentId="::pc1:t1" rows="6" maxColumns="2"
                          fieldWidth="20"/>
              </af:panelHeader>
            </af:panelGroupLayout>
            <af:panelBox text="Programs" id="pb1" background="medium">
              <f:facet name="toolbar"/>
              <af:panelCollection id="pc1" inlineStyle="width:inherit;">
                <f:facet name="menus"/>
                <f:facet name="toolbar">
                  <af:toolbar id="t3">
                    <af:commandToolbarButton text="Export" id="ctb1"
                                             inlineStyle="width:60px; text-align:center;"
                                             icon="/images/export.png">
                      <af:exportCollectionActionListener exportedId="t1"
                                                         type="excelHTML"
                                                         filename="Marketing_key#{PageListener.date}.xls"
                                                         title="EXPORT"/>
                    </af:commandToolbarButton>
                    <af:commandToolbarButton text="Save" disabled="false"
                                             id="cb1" partialSubmit="true"
                                             inlineStyle="width:60px; text-align:center;"
                                             icon="/images/save.png"
                                             action="#{HandlerBean.saveAction}">
                      <af:clientListener method="enforcePreventUserInput"
                                         type="action"/>
                    </af:commandToolbarButton>
                    <af:commandToolbarButton text="Cancel" disabled="false"
                                             immediate="true" id="cb4"
                                             inlineStyle="width:60px; text-align:center;"
                                             icon="/images/cancel.png"
                                             action="#{HandlerBean.viewSalesContractCancel}">
                      <af:resetActionListener/>
                    </af:commandToolbarButton>
                    <af:commandToolbarButton text="Delete"
                                             disabled="#{UserInfo.profile =='A'?'false':'true'}"
                                             id="cb2"
                                             inlineStyle="width:60px; text-align:center;color:red;"
                                             icon="/images/del.png"
                                             action="#{HandlerBean.Delete}"></af:commandToolbarButton>
                    <af:commandButton text="Refresh" id="cb5"
                                      action="#{HandlerBean.refresh}"
                                      visible="false"/>
                  </af:toolbar>
                </f:facet>
                <f:facet name="statusbar"/>
                <af:table value="#{bindings.VO_XXSalesPlanningHeaderMgt2.collectionModel}"
                          var="row"
                          rows="#{bindings.VO_XXSalesPlanningHeaderMgt2.rangeSize}"
                          emptyText="#{bindings.VO_XXSalesPlanningHeaderMgt2.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.VO_XXSalesPlanningHeaderMgt2.rangeSize}"
                          rowBandingInterval="0"
                          filterModel="#{bindings.VO_XXSalesPlanningHeaderMgt2Query.queryDescriptor}"
                          queryListener="#{bindings.VO_XXSalesPlanningHeaderMgt2Query.processQuery}"
                          filterVisible="true" varStatus="vs"
                          selectionListener="#{bindings.VO_XXSalesPlanningHeaderMgt2.collectionModel.makeCurrent}"
                          rowSelection="multiple" id="t1"
                          partialTriggers="::cb2 ::cb1"
                          contentDelivery="immediate" styleClass="test"
                          width="100%">
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramName.name}"
                             filterable="true" sortable="true"
                             headerText="Program Name" id="c28"
                             filterFeatures="caseInsensitive" rendered="true"
                             headerClass="test">
                    <af:selectOneChoice value="#{row.bindings.ProgramName.inputValue}"
                                        label="#{row.bindings.ProgramName.label}"
                                        required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramName.mandatory}"
                                        shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramName.tooltip}"
                                        id="soc8" partialTriggers="::t1">
                      <f:selectItems value="#{row.bindings.ProgramName.items}"
                                     id="si8"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.name}"
                             filterable="true" sortable="true"
                             headerText="Program Manager" id="c29"
                             filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.ProgramManager.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.tooltip}"
                                  id="it3">
                      <f:validator binding="#{row.bindings.ProgramManager.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.name}"
                             filterable="true" sortable="true"
                             headerText="Customer Name" id="c11" width="150"
                             filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.CustomerName.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.tooltip}"
                                  id="it7">
                      <f:validator binding="#{row.bindings.CustomerName.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.name}"
                             filterable="true" sortable="true"
                             headerText="Program Phase" id="c42" width="40"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:inputText value="#{row.bindings.ProgramPhase.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.tooltip}"
                                  id="it8">
                      <f:validator binding="#{row.bindings.ProgramPhase.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.name}"
                             filterable="true" sortable="true"
                             headerText="Customer PO No" id="c13" width="100"
                             filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.CustPoNo.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.tooltip}"
                                  id="it22"
                                  readOnly="#{UserInfo.profile=='A'?'false':'true'}">
                      <f:validator binding="#{row.bindings.CustPoNo.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.name}"
                             filterable="true" sortable="true"
                             headerText="PO Status" id="c3" width="40"
                             filterFeatures="caseInsensitive" rendered="false">
                    <af:inputText value="#{row.bindings.PoStatus.inputValue}UserInfo.profile"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.tooltip}"
                                  id="it19"
                                  readOnly="#{UserInfo.profile=='A'?'false':'true'}">
                      <f:validator binding="#{row.bindings.PoStatus.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c75" headerText="PO Status" filterable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.name}"
                             filterFeatures="caseInsensitive" sortable="true">
                    <af:selectOneChoice value="#{row.bindings.PoStatus.inputValue}"
                                        label="#{row.bindings.PoStatus.label}"
                                        required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.mandatory}"
                                        shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.tooltip}"
                                        id="soc1">
                      <f:selectItems value="#{row.bindings.PoStatus.items}"
                                     id="si1"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Potypemeaning.name}"
                             filterable="true" sortable="true"
                             headerText="PO Type" id="c45" width="70"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:selectOneChoice value="#{row.bindings.Potypemeaning.inputValue}"
                                        label="#{row.bindings.Potypemeaning.label}"
                                        required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Potypemeaning.mandatory}"
                                        shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Potypemeaning.tooltip}"
                                        id="soc7"
                                        readOnly="#{UserInfo.profile=='A'?'false':'true'}">
                      <f:selectItems value="#{row.bindings.Potypemeaning.items}"
                                     id="si7"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.name}"
                             filterable="true" sortable="true"
                             headerText="PO Rec Date" id="c38"
                             filterFeatures="caseInsensitive" visible="true">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.PoRecDate}"
                                    id="id24"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.PoRecDate.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.tooltip}"
                                  id="id2"
                                  readOnly="#{UserInfo.profile=='A'?'false':'true'}">
                      <f:validator binding="#{row.bindings.PoRecDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.name}"
                             filterable="true" sortable="true"
                             headerText="Payment Status"
                             visible="#{UserInfo.profile=='P'?'false':'true'}"
                             id="c6" filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.LcStatus.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.tooltip}"
                                  id="it24" readOnly="true">
                      <f:validator binding="#{row.bindings.LcStatus.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.name}"
                             filterable="true" sortable="true"
                             headerText="Ship Mode" id="c23"
                             visible="#{UserInfo.profile=='P'?'false':'true'}"
                             width="50" filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.ShipModeL.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.tooltip}"
                                  id="it10" readOnly="true">
                      <f:validator binding="#{row.bindings.ShipModeL.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.label}"
                             id="c40" visible="false">
                    <af:inputText value="#{row.bindings.ShipMode.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.tooltip}"
                                  id="it21">
                      <f:validator binding="#{row.bindings.ShipMode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipTerm.name}"
                             filterable="true" sortable="true"
                             headerText="Ship Term" id="c24" width="40"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:selectOneChoice value="#{row.bindings.ShipTerm.inputValue}"
                                        label="#{row.bindings.ShipTerm.label}"
                                        required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipTerm.mandatory}"
                                        shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipTerm.tooltip}"
                                        id="soc6" readOnly="true">
                      <f:selectItems value="#{row.bindings.ShipTerm.items}"
                                     id="si6"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.label}"
                             id="c27" filterFeatures="caseInsensitive">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.ShipmentDate}"
                                    id="id22"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.ShipmentDate.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.tooltip}"
                                  id="id7"
                                  readOnly="#{UserInfo.profile=='A'?'false':'true'}">
                      <f:validator binding="#{row.bindings.ShipmentDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.name}"
                             filterable="true" sortable="true"
                             headerText="EX-Mill" id="c34"
                             filterFeatures="caseInsensitive">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.ExMill}"
                                    id="id14"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.ExMill.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.tooltip}"
                                  id="id23"
                                  readOnly="#{UserInfo.profile=='A'?'false':'true'}">
                      <f:validator binding="#{row.bindings.ExMill.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.name}"
                             filterable="true" sortable="true"
                             headerText="Inspection Date" id="c26"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.InspectionDate}"
                                    id="id21"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.InspectionDate.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.tooltip}"
                                  id="id4"
                                  inlineStyle="#{row.InspectionDate lt HandlerBean.currentDateTime and (row.InspectionDone eq 'N' or row.InspectionDone eq null ) ? 'background-color:Red' : ''}"
                                  binding="#{HandlerBean.id4}"
                                  readOnly="#{UserInfo.profile=='A'?'false':'true'}">
                      <f:validator binding="#{row.bindings.InspectionDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.name}"
                             filterable="true" sortable="true"
                             headerText="Container Booking Date"
                             visible="#{UserInfo.profile=='P'?'false':'true'}"
                             id="c15" filterFeatures="caseInsensitive">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.ContainerBookingDate}"
                                    id="id9"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.ContainerBookingDate.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.tooltip}"
                                  inlineStyle="#{row.InspectionDate lt HandlerBean.currentDateTime and (row.ContainerBooked eq 'N' or row.ContainerBooked eq null ) ? 'background-color:Red' : ''}"
                                  id="id12"
                                  readOnly="#{UserInfo.profile=='A'?'false':'true'}">
                      <f:validator binding="#{row.bindings.ContainerBookingDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.name}"
                             filterable="true" sortable="true"
                             headerText="Greige Completion Date" id="c46"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.GreigeCompletionDate}"
                                    id="id1"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.GreigeCompletionDate.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.tooltip}"
                                  id="id20"
                                  readOnly="#{UserInfo.profile=='A'?'false':'true'}">
                      <f:validator binding="#{row.bindings.GreigeCompletionDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingWoNo.name}"
                             filterable="true" sortable="true"
                             headerText="Dyeing Wo No" id="c25"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:outputText value="#{row.DyeingWoNo}" id="ot1"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.name}"
                             filterable="true" sortable="true"
                             headerText="Dyeing Status" id="c2" width="190"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:inputText value="#{row.bindings.DyeingStatus.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.tooltip}"
                                  id="it14" readOnly="true">
                      <f:validator binding="#{row.bindings.DyeingStatus.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.name}"
                             filterable="true" sortable="true"
                             headerText="Dyeing Input Date" id="c19"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.DyeingInputDate}"
                                    id="id17"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.DyeingInputDate.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.tooltip}"
                                  id="id11"
                                  readOnly="#{UserInfo.profile == 'A'  ? 'false':'true'}">
                      <f:validator binding="#{row.bindings.DyeingInputDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.name}"
                             filterable="true" sortable="true"
                             headerText="Stitch Input Date" id="c14"
                             filterFeatures="caseInsensitive">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.StitchInputDate}"
                                    id="id13"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.StitchInputDate.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.tooltip}"
                                  id="id15"
                                  readOnly="#{UserInfo.profile == 'A'  ? 'false':'true'}">
                      <f:validator binding="#{row.bindings.StitchInputDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.name}"
                             filterable="true" sortable="true" headerText="NER"
                             id="c10" filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.Ner.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.tooltip}"
                                  id="it4"
                                  readOnly="#{UserInfo.profile=='A'?'false':'true'}">
                      <f:validator binding="#{row.bindings.Ner.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.label}"
                             id="c21" width="500"
                             filterFeatures="caseInsensitive" visible="true">
                    <af:inputText value="#{row.bindings.Accessories.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.tooltip}"
                                  id="it9" readOnly="true">
                      <f:validator binding="#{row.bindings.Accessories.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.name}"
                             filterable="true" sortable="true"
                             headerText="Accessories Order Date" id="c39"
                             filterFeatures="caseInsensitive">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.AccessoriesOrderDate}"
                                    id="id6"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.AccessoriesOrderDate.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.tooltip}"
                                  id="id8" readOnly="true">
                      <f:validator binding="#{row.bindings.AccessoriesOrderDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column id="c73" headerText="Target Date">
                    <af:inputDate value="#{row.bindings.TargetDate.inputValue}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.TargetDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.TargetDate.tooltip}"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  id="id27">
                      <f:validator binding="#{row.bindings.TargetDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.TargetDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column id="c64" headerText="Carton"
                             filterFeatures="caseInsensitive" sortable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Carton.name}"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Carton.inputValue}"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  simple="true"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Carton.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Carton.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Carton.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Carton.tooltip}"
                                  id="it39">
                      <f:validator binding="#{row.bindings.Carton.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c71" headerText="Stiffers"
                             filterFeatures="caseInsensitive" sortable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Stiffers.name}"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Stiffers.inputValue}"
                                  simple="true"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Stiffers.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Stiffers.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Stiffers.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Stiffers.tooltip}"
                                  id="it46">
                      <f:validator binding="#{row.bindings.Stiffers.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c68" headerText="Inserts"
                             filterFeatures="caseInsensitive" sortable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Inserts.name}"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Inserts.inputValue}"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  simple="true"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Inserts.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Inserts.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Inserts.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Inserts.tooltip}"
                                  id="it43">
                      <f:validator binding="#{row.bindings.Inserts.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c63"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CareLabel.name}"
                             headerText="Care Label"
                             filterFeatures="caseInsensitive" sortable="true"
                             filterable="true">
                    <af:inputText value="#{row.bindings.CareLabel.inputValue}"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  simple="true"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CareLabel.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CareLabel.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CareLabel.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CareLabel.tooltip}"
                                  id="it38">
                      <f:validator binding="#{row.bindings.CareLabel.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c62" headerText="Bags"
                             filterFeatures="caseInsensitive"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Bags.name}"
                             sortable="true" filterable="true">
                    <af:inputText value="#{row.bindings.Bags.inputValue}"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  simple="true"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Bags.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Bags.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Bags.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Bags.tooltip}"
                                  id="it37">
                      <f:validator binding="#{row.bindings.Bags.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c70" headerText="Normal Thread"
                             filterFeatures="caseInsensitive" sortable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.NormalThread.name}"
                             filterable="true">
                    <af:inputText value="#{row.bindings.NormalThread.inputValue}"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  simple="true"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.NormalThread.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.NormalThread.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.NormalThread.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.NormalThread.tooltip}"
                                  id="it45">
                      <f:validator binding="#{row.bindings.NormalThread.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c72" headerText="Sylko Thread"
                             filterFeatures="caseInsensitive" sortable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SylkoThread.name}"
                             filterable="true">
                    <af:inputText value="#{row.bindings.SylkoThread.inputValue}"
                                  simple="true"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SylkoThread.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SylkoThread.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SylkoThread.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SylkoThread.tooltip}"
                                  id="it47">
                      <f:validator binding="#{row.bindings.SylkoThread.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c65" headerText="Elastic,Cord & Fusing"
                             filterFeatures="caseInsensitive" sortable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ElasticCordFusing.name}"
                             filterable="true">
                    <af:inputText value="#{row.bindings.ElasticCordFusing.inputValue}"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  simple="true"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ElasticCordFusing.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ElasticCordFusing.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ElasticCordFusing.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ElasticCordFusing.tooltip}"
                                  id="it40">
                      <f:validator binding="#{row.bindings.ElasticCordFusing.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c67" headerText="Inhouse Stickers"
                             filterFeatures="caseInsensitive" sortable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InhouseStickers.name}"
                             filterable="true">
                    <af:inputText value="#{row.bindings.InhouseStickers.inputValue}"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  simple="true"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InhouseStickers.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InhouseStickers.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InhouseStickers.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InhouseStickers.tooltip}"
                                  id="it42">
                      <f:validator binding="#{row.bindings.InhouseStickers.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c69" headerText="Misc"
                             filterFeatures="caseInsensitive" sortable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Misc.name}"
                             filterable="true">
                    <af:inputText value="#{row.bindings.Misc.inputValue}"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  simple="true"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Misc.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Misc.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Misc.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Misc.tooltip}"
                                  id="it44">
                      <f:validator binding="#{row.bindings.Misc.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c66" headerText="Important Misc"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ImportedMisc.name}"
                             filterFeatures="caseInsensitive" sortable="true"
                             filterable="true">
                    <af:inputText value="#{row.bindings.ImportedMisc.inputValue}"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}"
                                  simple="true"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ImportedMisc.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ImportedMisc.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ImportedMisc.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ImportedMisc.tooltip}"
                                  id="it41">
                      <f:validator binding="#{row.bindings.ImportedMisc.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c74" headerText="Third Party Audit"
                             sortable="true" filterable="true"
                             filterFeatures="caseInsensitive"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ThirdPartyAudit.name}"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:inputText value="#{row.bindings.ThirdPartyAudit.inputValue}"
                                  simple="true"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ThirdPartyAudit.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ThirdPartyAudit.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ThirdPartyAudit.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ThirdPartyAudit.tooltip}"
                                  id="it48">
                      <f:validator binding="#{row.bindings.ThirdPartyAudit.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.name}"
                             filterable="true" sortable="true"
                             headerText="Purchasing Remarks" id="c31"
                             width="400" filterFeatures="caseInsensitive"
                             visible="true">
                    <af:inputText value="#{row.bindings.Remarks.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.tooltip}"
                                  id="it5"
                                  readOnly="#{UserInfo.profile=='P'?'false':'true'}">
                      <f:validator binding="#{row.bindings.Remarks.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.name}"
                             filterable="true" sortable="true"
                             headerText="CSTK/PL" id="c20"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:inputText value="#{row.bindings.CstkPl.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.tooltip}"
                                  id="it6" readOnly="true">
                      <f:validator binding="#{row.bindings.CstkPl.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookMonth.name}"
                             filterable="true" sortable="true"
                             headerText="Booking Month" id="c5" width="80"
                             filterFeatures="caseInsensitive">
                    <af:selectOneChoice value="#{row.bindings.BookMonth.inputValue}"
                                        label="#{row.bindings.BookMonth.label}"
                                        required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookMonth.mandatory}"
                                        shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookMonth.tooltip}"
                                        id="soc9" autoSubmit="true"
                                        readOnly="#{UserInfo.profile=='A'?'false':'true'}"
                                        partialTriggers="::t1">
                      <f:selectItems value="#{row.bindings.BookMonth.items}"
                                     id="si2"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SalesContractNo.name}"
                             filterable="true" sortable="true"
                             headerText="Sales Contract No" id="c41"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:outputText value="#{row.SalesContractNo}" id="ot2"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.label}"
                             id="c1" width="60" filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:inputText value="#{row.bindings.Value.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.tooltip}"
                                  id="it2" readOnly="true">
                      <f:validator binding="#{row.bindings.Value.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CurrencyCode.name}"
                             filterable="true" sortable="true"
                             headerText="Currency" id="c17" width="50"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:selectOneChoice value="#{row.bindings.CurrencyCode.inputValue}"
                                        label="#{row.bindings.CurrencyCode.label}"
                                        required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CurrencyCode.mandatory}"
                                        shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CurrencyCode.tooltip}"
                                        id="soc2" readOnly="true">
                      <f:selectItems value="#{row.bindings.CurrencyCode.items}"
                                     id="si9"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.label}"
                             id="c47" width="500"
                             filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.ViewerNote.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.tooltip}"
                                  id="it15"
                                  readOnly="#{UserInfo.profile == 'P'  ? 'true':'false'}">
                      <f:validator binding="#{row.bindings.ViewerNote.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c22" width="300" sortable="true"
                             filterable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.name}"
                             headerText="Artical"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:inputText value="#{row.bindings.Article.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.tooltip}"
                                  id="it18">
                      <f:validator binding="#{row.bindings.Article.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.name}"
                             filterable="true" sortable="true"
                             headerText="Move Order #" id="c4"
                             visible="#{UserInfo.profile=='P'?'false':'true'}"
                             filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.MoNo.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.tooltip}"
                                  id="it23" readOnly="true">
                      <f:validator binding="#{row.bindings.MoNo.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.name}"
                             filterable="true" sortable="true"
                             headerText="Delivery Order" id="c30"
                             visible="#{UserInfo.profile=='P'?'false':'true'}"
                             filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.Delivery.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.tooltip}"
                                  id="it16" readOnly="true">
                      <f:validator binding="#{row.bindings.Delivery.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.label}"
                             id="c16"
                             visible="#{UserInfo.profile=='P'?'false':'true'}"
                             filterFeatures="caseInsensitive">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.LastUpdateDate}"
                                    id="id5"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.LastUpdateDate.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.tooltip}"
                                  id="id16">
                      <f:validator binding="#{row.bindings.LastUpdateDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column id="c61" headerText="Last Updated By"
                             sortable="true" filterable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.name}"
                             filterFeatures="caseInsensitive">
                    <af:inputText value="#{row.bindings.Lastupdatedbyuser.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.label}"
                                  partialTriggers="::cb1"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.tooltip}"
                                  id="it36" readOnly="true">
                      <f:validator binding="#{row.bindings.Lastupdatedbyuser.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.label}"
                             id="c18"
                             visible="#{UserInfo.profile=='P'?'false':'true'}"
                             filterFeatures="caseInsensitive">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.CreationDate}"
                                    id="id18"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.CreationDate.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.tooltip}"
                                  id="id3">
                      <f:validator binding="#{row.bindings.CreationDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.label}"
                             id="c43" visible="false">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.BookingMonth}"
                                    id="id10"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.BookingMonth.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.mandatory}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.tooltip}"
                                  id="id19">
                      <f:validator binding="#{row.bindings.BookingMonth.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBooked.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBooked.label}"
                             id="c7" visible="false">
                    <af:selectOneChoice value="#{row.bindings.ContainerBooked.inputValue}"
                                        label="#{row.bindings.ContainerBooked.label}"
                                        required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBooked.mandatory}"
                                        shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBooked.tooltip}"
                                        id="soc5">
                      <f:selectItems value="#{row.bindings.ContainerBooked.items}"
                                     id="si5"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.label}"
                             id="c12" visible="false">
                    <af:inputText value="#{row.bindings.CreatedBy.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.tooltip}"
                                  id="it20">
                      <f:validator binding="#{row.bindings.CreatedBy.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column id="c60" sortable="true" filterable="true"
                             sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.name}"
                             headerText="Created By"
                             filterFeatures="caseInsensitive"
                             visible="#{UserInfo.profile=='P'?'false':'true'}">
                    <af:inputText value="#{row.bindings.Createdbyuser.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.tooltip}"
                                  id="it35" readOnly="true">
                      <f:validator binding="#{row.bindings.Createdbyuser.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.label}"
                             id="c32" visible="false">
                    <af:inputText value="#{row.bindings.PoType.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.tooltip}"
                                  id="it1">
                      <f:validator binding="#{row.bindings.PoType.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDone.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDone.label}"
                             id="c8" visible="false">
                    <af:selectOneChoice value="#{row.bindings.InspectionDone.inputValue}"
                                        label="#{row.bindings.InspectionDone.label}"
                                        required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDone.mandatory}"
                                        shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDone.tooltip}"
                                        id="soc3">
                      <f:selectItems value="#{row.bindings.InspectionDone.items}"
                                     id="si10"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.label}"
                             id="c9" visible="false">
                    <af:inputText value="#{row.bindings.LastUpdatedBy.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.tooltip}"
                                  id="it13">
                      <f:validator binding="#{row.bindings.LastUpdatedBy.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatusLookupCode.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatusLookupCode.label}"
                             id="c37" visible="false">
                    <af:inputText value="#{row.bindings.PoStatusLookupCode.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatusLookupCode.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatusLookupCode.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatusLookupCode.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatusLookupCode.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatusLookupCode.tooltip}"
                                  id="it25">
                      <f:validator binding="#{row.bindings.PoStatusLookupCode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.label}"
                             id="c35" visible="false">
                    <af:inputText value="#{row.bindings.ProgramId.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.tooltip}"
                                  id="it12">
                      <f:validator binding="#{row.bindings.ProgramId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.label}"
                             id="c36" visible="false">
                    <af:inputText value="#{row.bindings.SpHeaderId.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.tooltip}"
                                  id="it11">
                      <f:validator binding="#{row.bindings.SpHeaderId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.label}"
                             id="c44" visible="false">
                    <af:inputText value="#{row.bindings.VersionNumber.inputValue}"
                                  label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.label}"
                                  required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.mandatory}"
                                  columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.displayWidth}"
                                  maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.precision}"
                                  shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.tooltip}"
                                  id="it17">
                      <f:validator binding="#{row.bindings.VersionNumber.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustAcctId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustAcctId.label}"
                             id="c33" visible="false">
                    <af:selectOneChoice value="#{row.bindings.CustAcctId.inputValue}"
                                        label="#{row.bindings.CustAcctId.label}"
                                        required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustAcctId.mandatory}"
                                        shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustAcctId.tooltip}"
                                        id="soc10">
                      <f:selectItems value="#{row.bindings.CustAcctId.items}"
                                     id="si4"/>
                    </af:selectOneChoice>
                  </af:column>
                </af:table>
              </af:panelCollection>
            </af:panelBox>
            <af:panelBox text="Articals" id="pb2" background="medium">
              <f:facet name="toolbar"/>
              <af:commandButton actionListener="#{bindings.Delete1.execute}"
                                text="Delete Artical"
                                disabled="#{!bindings.Delete1.enabled}" id="cb3"
                                icon="/images/del.png"/>
              <af:table value="#{bindings.VO_SalesPlanningLines5.collectionModel}"
                        var="row"
                        rows="#{bindings.VO_SalesPlanningLines5.rangeSize}"
                        emptyText="#{bindings.VO_SalesPlanningLines5.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.VO_SalesPlanningLines5.rangeSize}"
                        rowBandingInterval="0" id="t2" width="100%"
                        rowSelection="multiple" partialTriggers="::pc1:t1 ::cb3"
                        contentDelivery="immediate">
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.Article.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.Article.label}"
                           id="c52">
                  <af:selectOneChoice value="#{row.bindings.Article.inputValue}"
                                      label="#{row.bindings.Article.label}"
                                      required="#{bindings.VO_SalesPlanningLines5.hints.Article.mandatory}"
                                      shortDesc="#{bindings.VO_SalesPlanningLines5.hints.Article.tooltip}"
                                      id="soc11" readOnly="true">
                    <f:selectItems value="#{row.bindings.Article.items}"
                                   id="si11"/>
                  </af:selectOneChoice>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.Quantity.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.Quantity.label}"
                           id="c53">
                  <af:inputText value="#{row.bindings.Quantity.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.Quantity.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.Quantity.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines5.hints.Quantity.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines5.hints.Quantity.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.Quantity.tooltip}"
                                id="it32" readOnly="true">
                    <f:validator binding="#{row.bindings.Quantity.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines5.hints.Quantity.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.Remarks.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.Remarks.label}"
                           id="c55" width="400">
                  <af:inputText value="#{row.bindings.Remarks.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.Remarks.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.Remarks.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines5.hints.Remarks.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines5.hints.Remarks.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.Remarks.tooltip}"
                                id="it30" readOnly="true">
                    <f:validator binding="#{row.bindings.Remarks.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.ArticleId.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.ArticleId.label}"
                           id="c59" visible="false">
                  <af:inputText value="#{row.bindings.ArticleId.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.ArticleId.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.ArticleId.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines5.hints.ArticleId.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines5.hints.ArticleId.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.ArticleId.tooltip}"
                                id="it31">
                    <f:validator binding="#{row.bindings.ArticleId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines5.hints.ArticleId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.CreatedBy.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.CreatedBy.label}"
                           id="c48" visible="false">
                  <af:inputText value="#{row.bindings.CreatedBy.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.CreatedBy.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.CreatedBy.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines5.hints.CreatedBy.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines5.hints.CreatedBy.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.CreatedBy.tooltip}"
                                id="it27">
                    <f:validator binding="#{row.bindings.CreatedBy.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.CreationDate.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.CreationDate.label}"
                           id="c49" visible="false">
                  <af:inputDate value="#{row.bindings.CreationDate.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.CreationDate.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.CreationDate.mandatory}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.CreationDate.tooltip}"
                                id="id26">
                    <f:validator binding="#{row.bindings.CreationDate.validator}"/>
                    <af:convertDateTime pattern="#{bindings.VO_SalesPlanningLines5.hints.CreationDate.format}"/>
                  </af:inputDate>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.LastUpdateDate.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.LastUpdateDate.label}"
                           id="c57" visible="false">
                  <af:inputDate value="#{row.bindings.LastUpdateDate.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.LastUpdateDate.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.LastUpdateDate.mandatory}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.LastUpdateDate.tooltip}"
                                id="id25">
                    <f:validator binding="#{row.bindings.LastUpdateDate.validator}"/>
                    <af:convertDateTime pattern="#{bindings.VO_SalesPlanningLines5.hints.LastUpdateDate.format}"/>
                  </af:inputDate>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.LastUpdatedBy.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.LastUpdatedBy.label}"
                           id="c58" visible="false">
                  <af:inputText value="#{row.bindings.LastUpdatedBy.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.LastUpdatedBy.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.LastUpdatedBy.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines5.hints.LastUpdatedBy.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines5.hints.LastUpdatedBy.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.LastUpdatedBy.tooltip}"
                                id="it33">
                    <f:validator binding="#{row.bindings.LastUpdatedBy.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.SpHeaderId.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.SpHeaderId.label}"
                           id="c54" visible="false">
                  <af:inputText value="#{row.bindings.SpHeaderId.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.SpHeaderId.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.SpHeaderId.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines5.hints.SpHeaderId.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines5.hints.SpHeaderId.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.SpHeaderId.tooltip}"
                                id="it28">
                    <f:validator binding="#{row.bindings.SpHeaderId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines5.hints.SpHeaderId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.SpLineId.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.SpLineId.label}"
                           id="c50" visible="false">
                  <af:inputText value="#{row.bindings.SpLineId.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.SpLineId.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.SpLineId.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines5.hints.SpLineId.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines5.hints.SpLineId.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.SpLineId.tooltip}"
                                id="it26">
                    <f:validator binding="#{row.bindings.SpLineId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines5.hints.SpLineId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.Uom.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.Uom.label}"
                           id="c51" visible="false">
                  <af:inputText value="#{row.bindings.Uom.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.Uom.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.Uom.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines5.hints.Uom.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines5.hints.Uom.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.Uom.tooltip}"
                                id="it29">
                    <f:validator binding="#{row.bindings.Uom.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines5.hints.VersionNumber.name}"
                           sortable="false"
                           headerText="#{bindings.VO_SalesPlanningLines5.hints.VersionNumber.label}"
                           id="c56" visible="false">
                  <af:inputText value="#{row.bindings.VersionNumber.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines5.hints.VersionNumber.label}"
                                required="#{bindings.VO_SalesPlanningLines5.hints.VersionNumber.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines5.hints.VersionNumber.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines5.hints.VersionNumber.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines5.hints.VersionNumber.tooltip}"
                                id="it34">
                    <f:validator binding="#{row.bindings.VersionNumber.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines5.hints.VersionNumber.format}"/>
                  </af:inputText>
                </af:column>
              </af:table>
            </af:panelBox>
          </af:panelGroupLayout>
        </f:facet>
        <f:facet name="search"/>
      </af:pageTemplate>
      <af:popup id="p1" contentDelivery="immediate">
        <af:dialog id="d2" type="none" title="Please wait. . . . . . "
                   closeIconVisible="false">
          <af:panelGroupLayout id="pgl44" layout="vertical" halign="center">
            <af:outputText id="outputtext2"
                           inlineStyle="color:Red; font-weight:bold; font-size:medium;"/>
            <af:image source="/images/anim_pleaseWait.gif" id="i1"/>
          </af:panelGroupLayout>
        </af:dialog>
      </af:popup>
    </af:form>
    <af:resource type="javascript">
      function enforcePreventUserInput(evt) {
          var popup = AdfPage.PAGE.findComponentByAbsoluteId('p1');
          if (popup != null) {
              AdfPage.PAGE.addBusyStateListener(popup, handleBusyState);
              evt.preventUserInput();
          }
      }

      function handleBusyState(evt) {
          var popup = AdfPage.PAGE.findComponentByAbsoluteId('p1');
          if (popup != null) {
              if (evt.isBusy()) {
                  popup.show();
              }
              else if (popup.isPopupVisible()) {
                  popup.hide();
                  AdfPage.PAGE.removeBusyStateListener(popup, handleBusyState);
              }
          }
      }
    </af:resource>
  </af:document>
</f:view>
<%-- oracle-jdev-comment:preferred-managed-bean-name:HandlerBean--%>