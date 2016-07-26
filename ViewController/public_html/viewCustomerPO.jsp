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
            <af:panelBox text="Customer PO" id="pb1" background="medium">
              <f:facet name="toolbar"/>
              <af:panelCollection id="pc1" inlineStyle="width:inherit;">
                <f:facet name="menus"/>
                <f:facet name="toolbar">
                  <af:toolbar id="t3" inlineStyle="text-align:left;">
                    <af:commandToolbarButton text="Export" id="ctb1"
                                             inlineStyle="width:60px; text-align:center;"
                                             icon="/images/export.png">
                      <af:exportCollectionActionListener exportedId="t1"
                                                         type="excelHTML"
                                                         filename="Marketing_key#{PageListener.date}.xls"
                                                         title="EXPORT"/>
                    </af:commandToolbarButton>
                  </af:toolbar>
                </f:facet>
                <f:facet name="statusbar"/>
                <af:table value="#{bindings.VO_SalesPlanningHeader3.collectionModel}"
                          var="row"
                          rows="#{bindings.VO_SalesPlanningHeader3.rangeSize}"
                          emptyText="#{bindings.VO_SalesPlanningHeader3.viewable ? 'No data to display.' : 'Access Denied.'}"
                          fetchSize="#{bindings.VO_SalesPlanningHeader3.rangeSize}"
                          rowBandingInterval="0"
                          filterModel="#{bindings.VO_SalesPlanningHeader3Query.queryDescriptor}"
                          queryListener="#{bindings.VO_SalesPlanningHeader3Query.processQuery}"
                          filterVisible="true" varStatus="vs"
                          selectionListener="#{bindings.VO_SalesPlanningHeader3.collectionModel.makeCurrent}"
                          rowSelection="multiple" id="t1" width="100%">
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ProgramName.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ProgramName.label}"
                             id="c20" inlineStyle="padding-top:5px">
                    <af:selectOneChoice value="#{row.bindings.ProgramName.inputValue}"
                                        label="#{row.bindings.ProgramName.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.ProgramName.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ProgramName.tooltip}"
                                        id="soc10" readOnly="true">
                      <f:selectItems value="#{row.bindings.ProgramName.items}"
                                     id="si11"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ProgramManager.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ProgramManager.label}"
                             id="c17" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.ProgramManager.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.ProgramManager.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.ProgramManager.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.ProgramManager.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.ProgramManager.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ProgramManager.tooltip}"
                                  id="it18" readOnly="true">
                      <f:validator binding="#{row.bindings.ProgramManager.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.CustomerName.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.CustomerName.label}"
                             id="c47" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.CustomerName.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.CustomerName.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.CustomerName.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.CustomerName.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.CustomerName.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.CustomerName.tooltip}"
                                  id="it21" readOnly="true">
                      <f:validator binding="#{row.bindings.CustomerName.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ProgramPhase.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ProgramPhase.label}"
                             id="c37" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.ProgramPhase.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.ProgramPhase.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.ProgramPhase.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.ProgramPhase.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.ProgramPhase.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ProgramPhase.tooltip}"
                                  id="it4" readOnly="true">
                      <f:validator binding="#{row.bindings.ProgramPhase.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.CustPoNo.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.CustPoNo.label}"
                             id="c1" inlineStyle="padding-top:5px">
                    <af:selectOneChoice value="#{row.bindings.CustPoNo.inputValue}"
                                        label="#{row.bindings.CustPoNo.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.CustPoNo.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.CustPoNo.tooltip}"
                                        id="soc8" readOnly="true">
                      <f:selectItems value="#{row.bindings.CustPoNo.items}"
                                     id="si13"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.PoStatus.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.PoStatus.label}"
                             id="c33" inlineStyle="padding-top:5px">
                    <af:selectOneChoice value="#{row.bindings.PoStatus.inputValue}"
                                        label="#{row.bindings.PoStatus.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.PoStatus.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.PoStatus.tooltip}"
                                        id="soc9" readOnly="true">
                      <f:selectItems value="#{row.bindings.PoStatus.items}"
                                     id="si10"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.Potypemeaning.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.Potypemeaning.label}"
                             id="c8" inlineStyle="padding-top:5px">
                    <af:selectOneChoice value="#{row.bindings.Potypemeaning.inputValue}"
                                        label="#{row.bindings.Potypemeaning.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.Potypemeaning.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.Potypemeaning.tooltip}"
                                        id="soc5" readOnly="true">
                      <f:selectItems value="#{row.bindings.Potypemeaning.items}"
                                     id="si12"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.PoRecDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.PoRecDate.label}"
                             id="c36" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.PoRecDate}"
                                    id="id15"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.PoRecDate.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.PoRecDate.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.PoRecDate.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.PoRecDate.tooltip}"
                                  id="id7" readOnly="true">
                      <f:validator binding="#{row.bindings.PoRecDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.PoRecDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.LcStatus.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.LcStatus.label}"
                             id="c7" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.LcStatus.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.LcStatus.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.LcStatus.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.LcStatus.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.LcStatus.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.LcStatus.tooltip}"
                                  id="it10" readOnly="true">
                      <f:validator binding="#{row.bindings.LcStatus.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ShipModeL.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ShipModeL.label}"
                             id="c5" inlineStyle="padding-top:5px">
                    <af:selectOneChoice value="#{row.bindings.ShipModeL.inputValue}"
                                        label="#{row.bindings.ShipModeL.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.ShipModeL.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ShipModeL.tooltip}"
                                        id="soc12" readOnly="true">
                      <f:selectItems value="#{row.bindings.ShipModeL.items}"
                                     id="si7"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ShipTerm.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ShipTerm.label}"
                             id="c31" inlineStyle="padding-top:5px">
                    <af:selectOneChoice value="#{row.bindings.ShipTerm.inputValue}"
                                        label="#{row.bindings.ShipTerm.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.ShipTerm.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ShipTerm.tooltip}"
                                        id="soc1" readOnly="true">
                      <f:selectItems value="#{row.bindings.ShipTerm.items}"
                                     id="si9"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ShipmentDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ShipmentDate.label}"
                             id="c27" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.ShipmentDate}"
                                    id="id20"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.ShipmentDate.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.ShipmentDate.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.ShipmentDate.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ShipmentDate.tooltip}"
                                  id="id13" readOnly="true">
                      <f:validator binding="#{row.bindings.ShipmentDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.ShipmentDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ExMill.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ExMill.label}"
                             id="c14" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.ExMill}"
                                    id="id14"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.ExMill.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.ExMill.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.ExMill.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ExMill.tooltip}"
                                  id="id2" readOnly="true">
                      <f:validator binding="#{row.bindings.ExMill.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.ExMill.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.InspectionDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.InspectionDate.label}"
                             id="c16" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.InspectionDate}"
                                    id="id10"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.InspectionDate.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.InspectionDate.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.InspectionDate.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.InspectionDate.tooltip}"
                                  id="id4" readOnly="true">
                      <f:validator binding="#{row.bindings.InspectionDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.InspectionDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ContainerBookingDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ContainerBookingDate.label}"
                             id="c42" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.ContainerBookingDate}"
                                    id="id23"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.ContainerBookingDate.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.ContainerBookingDate.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.ContainerBookingDate.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ContainerBookingDate.tooltip}"
                                  id="id24" readOnly="true">
                      <f:validator binding="#{row.bindings.ContainerBookingDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.ContainerBookingDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.GreigeCompletionDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.GreigeCompletionDate.label}"
                             id="c41" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.GreigeCompletionDate}"
                                    id="id18"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.GreigeCompletionDate.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.GreigeCompletionDate.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.GreigeCompletionDate.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.GreigeCompletionDate.tooltip}"
                                  id="id5" readOnly="true">
                      <f:validator binding="#{row.bindings.GreigeCompletionDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.GreigeCompletionDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.DyeingWoNo.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.DyeingWoNo.label}"
                             id="c12" inlineStyle="padding-top:5px">
                    <af:selectOneChoice value="#{row.bindings.DyeingWoNo.inputValue}"
                                        label="#{row.bindings.DyeingWoNo.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.DyeingWoNo.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.DyeingWoNo.tooltip}"
                                        id="soc6" readOnly="true">
                      <f:selectItems value="#{row.bindings.DyeingWoNo.items}"
                                     id="si4"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.DyeingStatus.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.DyeingStatus.label}"
                             id="c9" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.DyeingStatus.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.DyeingStatus.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.DyeingStatus.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.DyeingStatus.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.DyeingStatus.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.DyeingStatus.tooltip}"
                                  id="it16" readOnly="true">
                      <f:validator binding="#{row.bindings.DyeingStatus.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.DyeingInputDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.DyeingInputDate.label}"
                             id="c3" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.DyeingInputDate}"
                                    id="id8"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.DyeingInputDate.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.DyeingInputDate.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.DyeingInputDate.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.DyeingInputDate.tooltip}"
                                  id="id6" readOnly="true">
                      <f:validator binding="#{row.bindings.DyeingInputDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.DyeingInputDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.StitchInputDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.StitchInputDate.label}"
                             id="c39" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.StitchInputDate}"
                                    id="id21"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.StitchInputDate.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.StitchInputDate.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.StitchInputDate.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.StitchInputDate.tooltip}"
                                  id="id9" readOnly="true">
                      <f:validator binding="#{row.bindings.StitchInputDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.StitchInputDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.Ner.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.Ner.label}"
                             id="c45" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.Ner.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.Ner.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.Ner.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.Ner.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.Ner.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.Ner.tooltip}"
                                  id="it5" readOnly="true">
                      <f:validator binding="#{row.bindings.Ner.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.Accessories.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.Accessories.label}"
                             id="c13" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.Accessories.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.Accessories.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.Accessories.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.Accessories.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.Accessories.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.Accessories.tooltip}"
                                  id="it13" readOnly="true">
                      <f:validator binding="#{row.bindings.Accessories.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.AccessoriesOrderDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.AccessoriesOrderDate.label}"
                             id="c44" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.AccessoriesOrderDate}"
                                    id="id1"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.AccessoriesOrderDate.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.AccessoriesOrderDate.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.AccessoriesOrderDate.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.AccessoriesOrderDate.tooltip}"
                                  id="id19" readOnly="true">
                      <f:validator binding="#{row.bindings.AccessoriesOrderDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.AccessoriesOrderDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.Remarks.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.Remarks.label}"
                             id="c22" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.Remarks.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.Remarks.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.Remarks.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.Remarks.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.Remarks.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.Remarks.tooltip}"
                                  id="it11" readOnly="true">
                      <f:validator binding="#{row.bindings.Remarks.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.CstkPl.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.CstkPl.label}"
                             id="c21" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.CstkPl.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.CstkPl.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.CstkPl.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.CstkPl.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.CstkPl.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.CstkPl.tooltip}"
                                  id="it7" readOnly="true">
                      <f:validator binding="#{row.bindings.CstkPl.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.BookMonth.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.BookMonth.label}"
                             id="c28" inlineStyle="padding-top:5px">
                    <af:selectOneChoice value="#{row.bindings.BookMonth.inputValue}"
                                        label="#{row.bindings.BookMonth.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.BookMonth.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.BookMonth.tooltip}"
                                        id="soc2" readOnly="true">
                      <f:selectItems value="#{row.bindings.BookMonth.items}"
                                     id="si6"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.SalesContractNo.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.SalesContractNo.label}"
                             id="c29" inlineStyle="padding-top:5px">
                    <af:selectOneChoice value="#{row.bindings.SalesContractNo.inputValue}"
                                        label="#{row.bindings.SalesContractNo.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.SalesContractNo.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.SalesContractNo.tooltip}"
                                        id="soc3" readOnly="true">
                      <f:selectItems value="#{row.bindings.SalesContractNo.items}"
                                     id="si2"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.Value.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.Value.label}"
                             id="c25" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.Value.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.Value.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.Value.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.Value.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.Value.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.Value.tooltip}"
                                  id="it12" readOnly="true">
                      <f:validator binding="#{row.bindings.Value.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_SalesPlanningHeader3.hints.Value.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.CurrencyCode.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.CurrencyCode.label}"
                             id="c32" inlineStyle="padding-top:5px">
                    <af:selectOneChoice value="#{row.bindings.CurrencyCode.inputValue}"
                                        label="#{row.bindings.CurrencyCode.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.CurrencyCode.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.CurrencyCode.tooltip}"
                                        id="soc4" readOnly="true">
                      <f:selectItems value="#{row.bindings.CurrencyCode.items}"
                                     id="si1"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column id="c60" headerText="Third Party Audit">
                    <af:outputText value="#{row.ThirdPartyAudit}" id="ot1"/>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ViewerNote.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ViewerNote.label}"
                             id="c11" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.ViewerNote.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.ViewerNote.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.ViewerNote.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.ViewerNote.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.ViewerNote.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ViewerNote.tooltip}"
                                  id="it14" readOnly="true">
                      <f:validator binding="#{row.bindings.ViewerNote.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.MoNo.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.MoNo.label}"
                             id="c6" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.MoNo.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.MoNo.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.MoNo.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.MoNo.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.MoNo.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.MoNo.tooltip}"
                                  id="it2" readOnly="true">
                      <f:validator binding="#{row.bindings.MoNo.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.Delivery.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.Delivery.label}"
                             id="c24" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.Delivery.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.Delivery.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.Delivery.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.Delivery.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.Delivery.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.Delivery.tooltip}"
                                  id="it3" readOnly="true">
                      <f:validator binding="#{row.bindings.Delivery.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdateDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdateDate.label}"
                             id="c38" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.LastUpdateDate}"
                                    id="id17"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.LastUpdateDate.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdateDate.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdateDate.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdateDate.tooltip}"
                                  id="id22" readOnly="true">
                      <f:validator binding="#{row.bindings.LastUpdateDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdateDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdatedBy.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdatedBy.label}"
                             id="c23" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.LastUpdatedBy.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdatedBy.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdatedBy.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdatedBy.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdatedBy.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.LastUpdatedBy.tooltip}"
                                  id="it9" readOnly="true">
                      <f:validator binding="#{row.bindings.LastUpdatedBy.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.CreationDate.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.CreationDate.label}"
                             id="c19" inlineStyle="padding-top:5px">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.CreationDate}"
                                    id="id12"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.CreationDate.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.CreationDate.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.CreationDate.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.CreationDate.tooltip}"
                                  id="id16" readOnly="true">
                      <f:validator binding="#{row.bindings.CreationDate.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.CreationDate.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.CreatedBy.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.CreatedBy.label}"
                             id="c4" inlineStyle="padding-top:5px">
                    <af:inputText value="#{row.bindings.CreatedBy.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.CreatedBy.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.CreatedBy.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.CreatedBy.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.CreatedBy.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.CreatedBy.tooltip}"
                                  id="it15" readOnly="true">
                      <f:validator binding="#{row.bindings.CreatedBy.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.BookingMonth.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.BookingMonth.label}"
                             id="c34" visible="false">
                    <f:facet name="filter">
                      <af:inputDate value="#{vs.filterCriteria.BookingMonth}"
                                    id="id11"/>
                    </f:facet>
                    <af:inputDate value="#{row.bindings.BookingMonth.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.BookingMonth.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.BookingMonth.mandatory}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.BookingMonth.tooltip}"
                                  id="id3">
                      <f:validator binding="#{row.bindings.BookingMonth.validator}"/>
                      <af:convertDateTime pattern="#{bindings.VO_SalesPlanningHeader3.hints.BookingMonth.format}"/>
                    </af:inputDate>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ContainerBooked.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ContainerBooked.label}"
                             id="c10" visible="false">
                    <af:selectOneRadio value="#{row.bindings.ContainerBooked.inputValue}"
                                       label="#{row.bindings.ContainerBooked.label}"
                                       required="#{bindings.VO_SalesPlanningHeader3.hints.ContainerBooked.mandatory}"
                                       shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ContainerBooked.tooltip}"
                                       id="sor1">
                      <f:selectItems value="#{row.bindings.ContainerBooked.items}"
                                     id="si14"/>
                    </af:selectOneRadio>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.GreigeContractNo.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.GreigeContractNo.label}"
                             id="c26" visible="false">
                    <af:selectOneChoice value="#{row.bindings.GreigeContractNo.inputValue}"
                                        label="#{row.bindings.GreigeContractNo.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.GreigeContractNo.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.GreigeContractNo.tooltip}"
                                        id="soc7">
                      <f:selectItems value="#{row.bindings.GreigeContractNo.items}"
                                     id="si3"/>
                    </af:selectOneChoice>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.InspectionDone.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.InspectionDone.label}"
                             id="c35" visible="false">
                    <af:selectOneRadio value="#{row.bindings.InspectionDone.inputValue}"
                                       label="#{row.bindings.InspectionDone.label}"
                                       required="#{bindings.VO_SalesPlanningHeader3.hints.InspectionDone.mandatory}"
                                       shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.InspectionDone.tooltip}"
                                       id="sor2">
                      <f:selectItems value="#{row.bindings.InspectionDone.items}"
                                     id="si8"/>
                    </af:selectOneRadio>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.PoStatusLookupCode.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.PoStatusLookupCode.label}"
                             id="c46" visible="false">
                    <af:inputText value="#{row.bindings.PoStatusLookupCode.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.PoStatusLookupCode.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.PoStatusLookupCode.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.PoStatusLookupCode.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.PoStatusLookupCode.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.PoStatusLookupCode.tooltip}"
                                  id="it20">
                      <f:validator binding="#{row.bindings.PoStatusLookupCode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.PoType.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.PoType.label}"
                             id="c40" visible="false">
                    <af:inputText value="#{row.bindings.PoType.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.PoType.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.PoType.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.PoType.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.PoType.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.PoType.tooltip}"
                                  id="it8">
                      <f:validator binding="#{row.bindings.PoType.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ProgramId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ProgramId.label}"
                             id="c43" visible="false">
                    <af:inputText value="#{row.bindings.ProgramId.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.ProgramId.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.ProgramId.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.ProgramId.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.ProgramId.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ProgramId.tooltip}"
                                  id="it17">
                      <f:validator binding="#{row.bindings.ProgramId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_SalesPlanningHeader3.hints.ProgramId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.ShipMode.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.ShipMode.label}"
                             id="c30" visible="false">
                    <af:inputText value="#{row.bindings.ShipMode.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.ShipMode.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.ShipMode.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.ShipMode.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.ShipMode.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.ShipMode.tooltip}"
                                  id="it19">
                      <f:validator binding="#{row.bindings.ShipMode.validator}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.SpHeaderId.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.SpHeaderId.label}"
                             id="c2" visible="false">
                    <af:inputText value="#{row.bindings.SpHeaderId.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.SpHeaderId.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.SpHeaderId.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.SpHeaderId.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.SpHeaderId.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.SpHeaderId.tooltip}"
                                  id="it6">
                      <f:validator binding="#{row.bindings.SpHeaderId.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_SalesPlanningHeader3.hints.SpHeaderId.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.VersionNumber.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.VersionNumber.label}"
                             id="c18" visible="false">
                    <af:inputText value="#{row.bindings.VersionNumber.inputValue}"
                                  label="#{bindings.VO_SalesPlanningHeader3.hints.VersionNumber.label}"
                                  required="#{bindings.VO_SalesPlanningHeader3.hints.VersionNumber.mandatory}"
                                  columns="#{bindings.VO_SalesPlanningHeader3.hints.VersionNumber.displayWidth}"
                                  maximumLength="#{bindings.VO_SalesPlanningHeader3.hints.VersionNumber.precision}"
                                  shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.VersionNumber.tooltip}"
                                  id="it1">
                      <f:validator binding="#{row.bindings.VersionNumber.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.VO_SalesPlanningHeader3.hints.VersionNumber.format}"/>
                    </af:inputText>
                  </af:column>
                  <af:column sortProperty="#{bindings.VO_SalesPlanningHeader3.hints.Customer.name}"
                             filterable="true" sortable="true"
                             headerText="#{bindings.VO_SalesPlanningHeader3.hints.Customer.label}"
                             id="c15" visible="false">
                    <af:selectOneChoice value="#{row.bindings.Customer.inputValue}"
                                        label="#{row.bindings.Customer.label}"
                                        required="#{bindings.VO_SalesPlanningHeader3.hints.Customer.mandatory}"
                                        shortDesc="#{bindings.VO_SalesPlanningHeader3.hints.Customer.tooltip}"
                                        id="soc11">
                      <f:selectItems value="#{row.bindings.Customer.items}"
                                     id="si5"/>
                    </af:selectOneChoice>
                  </af:column>
                </af:table>
                <f:facet name="viewMenu"/>
              </af:panelCollection>
            </af:panelBox>
            <af:panelBox text="Article" id="pb2" background="medium">
              <f:facet name="toolbar"/>
              <af:table value="#{bindings.VO_SalesPlanningLines2.collectionModel}"
                        var="row"
                        rows="#{bindings.VO_SalesPlanningLines2.rangeSize}"
                        emptyText="#{bindings.VO_SalesPlanningLines2.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.VO_SalesPlanningLines2.rangeSize}"
                        rowBandingInterval="0"
                        filterModel="#{bindings.VO_SalesPlanningLines2Query.queryDescriptor}"
                        queryListener="#{bindings.VO_SalesPlanningLines2Query.processQuery}"
                        filterVisible="true" varStatus="vs"
                        selectionListener="#{bindings.VO_SalesPlanningLines2.collectionModel.makeCurrent}"
                        rowSelection="multiple" id="t2" width="100%"
                        partialTriggers="::t1">
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.label}"
                           id="c58" visible="false">
                  <af:inputText value="#{row.bindings.ArticleId.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.tooltip}"
                                id="it27">
                    <f:validator binding="#{row.bindings.ArticleId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines2.hints.ArticleId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.label}"
                           id="c59" visible="false">
                  <af:inputText value="#{row.bindings.CreatedBy.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.CreatedBy.tooltip}"
                                id="it25">
                    <f:validator binding="#{row.bindings.CreatedBy.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.label}"
                           id="c51" visible="false">
                  <f:facet name="filter">
                    <af:inputDate value="#{vs.filterCriteria.CreationDate}"
                                  id="id27"/>
                  </f:facet>
                  <af:inputDate value="#{row.bindings.CreationDate.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.mandatory}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.tooltip}"
                                id="id25">
                    <f:validator binding="#{row.bindings.CreationDate.validator}"/>
                    <af:convertDateTime pattern="#{bindings.VO_SalesPlanningLines2.hints.CreationDate.format}"/>
                  </af:inputDate>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.label}"
                           id="c55" visible="false">
                  <f:facet name="filter">
                    <af:inputDate value="#{vs.filterCriteria.LastUpdateDate}"
                                  id="id26"/>
                  </f:facet>
                  <af:inputDate value="#{row.bindings.LastUpdateDate.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.mandatory}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.tooltip}"
                                id="id28">
                    <f:validator binding="#{row.bindings.LastUpdateDate.validator}"/>
                    <af:convertDateTime pattern="#{bindings.VO_SalesPlanningLines2.hints.LastUpdateDate.format}"/>
                  </af:inputDate>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.label}"
                           id="c57" visible="false">
                  <af:inputText value="#{row.bindings.LastUpdatedBy.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.LastUpdatedBy.tooltip}"
                                id="it26">
                    <f:validator binding="#{row.bindings.LastUpdatedBy.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.Article.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.Article.label}"
                           id="c48">
                  <af:selectOneChoice value="#{row.bindings.Article.inputValue}"
                                      label="#{row.bindings.Article.label}"
                                      required="#{bindings.VO_SalesPlanningLines2.hints.Article.mandatory}"
                                      shortDesc="#{bindings.VO_SalesPlanningLines2.hints.Article.tooltip}"
                                      id="soc13" readOnly="true">
                    <f:selectItems value="#{row.bindings.Article.items}"
                                   id="si15"/>
                  </af:selectOneChoice>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.Quantity.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.Quantity.label}"
                           id="c52">
                  <af:inputText value="#{row.bindings.Quantity.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.Quantity.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.Quantity.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.Quantity.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.Quantity.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.Quantity.tooltip}"
                                id="it23" readOnly="true">
                    <f:validator binding="#{row.bindings.Quantity.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines2.hints.Quantity.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.Remarks.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.Remarks.label}"
                           id="c54">
                  <af:inputText value="#{row.bindings.Remarks.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.Remarks.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.Remarks.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.Remarks.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.Remarks.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.Remarks.tooltip}"
                                id="it24" readOnly="true">
                    <f:validator binding="#{row.bindings.Remarks.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.label}"
                           id="c49" visible="false">
                  <af:inputText value="#{row.bindings.SpHeaderId.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.tooltip}"
                                id="it22">
                    <f:validator binding="#{row.bindings.SpHeaderId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines2.hints.SpHeaderId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.label}"
                           id="c50" visible="false">
                  <af:inputText value="#{row.bindings.SpLineId.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.tooltip}"
                                id="it28">
                    <f:validator binding="#{row.bindings.SpLineId.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines2.hints.SpLineId.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.Uom.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.Uom.label}"
                           id="c53" visible="false">
                  <af:inputText value="#{row.bindings.Uom.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.Uom.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.Uom.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.Uom.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.Uom.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.Uom.tooltip}"
                                id="it29">
                    <f:validator binding="#{row.bindings.Uom.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.label}"
                           id="c56" visible="false">
                  <af:inputText value="#{row.bindings.VersionNumber.inputValue}"
                                label="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.label}"
                                required="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.mandatory}"
                                columns="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.displayWidth}"
                                maximumLength="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.precision}"
                                shortDesc="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.tooltip}"
                                id="it30">
                    <f:validator binding="#{row.bindings.VersionNumber.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.VO_SalesPlanningLines2.hints.VersionNumber.format}"/>
                  </af:inputText>
                </af:column>
              </af:table>
            </af:panelBox>
          </af:panelGroupLayout>
        </f:facet>
        <f:facet name="search"/>
      </af:pageTemplate>
    </af:form>
  </af:document>
</f:view>