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
          <af:panelGroupLayout id="pgl1" layout="scroll">
            <af:commandButton text="commandButton 1" id="cb1"
                             />
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
                      rowSelection="multiple" id="t1">
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.label}"
                         id="c29">
                <af:inputText value="#{row.bindings.Accessories.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Accessories.tooltip}"
                              id="it10">
                  <f:validator binding="#{row.bindings.Accessories.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.label}"
                         id="c44">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.AccessoriesOrderDate}"
                                id="id7"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.AccessoriesOrderDate.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.tooltip}"
                              id="id18">
                  <f:validator binding="#{row.bindings.AccessoriesOrderDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.AccessoriesOrderDate.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookMonth.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookMonth.label}"
                         id="c18">
                <af:selectOneChoice value="#{row.bindings.BookMonth.inputValue}"
                                    label="#{row.bindings.BookMonth.label}"
                                    required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookMonth.mandatory}"
                                    shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookMonth.tooltip}"
                                    id="soc10">
                  <f:selectItems value="#{row.bindings.BookMonth.items}"
                                 id="si9"/>
                </af:selectOneChoice>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.label}"
                         id="c3">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.BookingMonth}"
                                id="id4"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.BookingMonth.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.tooltip}"
                              id="id6">
                  <f:validator binding="#{row.bindings.BookingMonth.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.BookingMonth.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBooked.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBooked.label}"
                         id="c7">
                <af:selectOneChoice value="#{row.bindings.ContainerBooked.inputValue}"
                                    label="#{row.bindings.ContainerBooked.label}"
                                    required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBooked.mandatory}"
                                    shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBooked.tooltip}"
                                    id="soc7">
                  <f:selectItems value="#{row.bindings.ContainerBooked.items}"
                                 id="si7"/>
                </af:selectOneChoice>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.label}"
                         id="c13">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.ContainerBookingDate}"
                                id="id13"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.ContainerBookingDate.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.tooltip}"
                              id="id22">
                  <f:validator binding="#{row.bindings.ContainerBookingDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ContainerBookingDate.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.label}"
                         id="c39">
                <af:inputText value="#{row.bindings.CreatedBy.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreatedBy.tooltip}"
                              id="it27">
                  <f:validator binding="#{row.bindings.CreatedBy.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.label}"
                         id="c42">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.CreationDate}"
                                id="id11"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.CreationDate.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.tooltip}"
                              id="id10">
                  <f:validator binding="#{row.bindings.CreationDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CreationDate.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.label}"
                         id="c12">
                <af:inputText value="#{row.bindings.CstkPl.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CstkPl.tooltip}"
                              id="it19">
                  <f:validator binding="#{row.bindings.CstkPl.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CurrencyCode.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CurrencyCode.label}"
                         id="c19">
                <af:selectOneChoice value="#{row.bindings.CurrencyCode.inputValue}"
                                    label="#{row.bindings.CurrencyCode.label}"
                                    required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CurrencyCode.mandatory}"
                                    shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CurrencyCode.tooltip}"
                                    id="soc9">
                  <f:selectItems value="#{row.bindings.CurrencyCode.items}"
                                 id="si3"/>
                </af:selectOneChoice>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.label}"
                         id="c23">
                <af:inputText value="#{row.bindings.CustPoNo.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustPoNo.tooltip}"
                              id="it5">
                  <f:validator binding="#{row.bindings.CustPoNo.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.label}"
                         id="c4">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.DyeingInputDate}"
                                id="id14"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.DyeingInputDate.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.tooltip}"
                              id="id5">
                  <f:validator binding="#{row.bindings.DyeingInputDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingInputDate.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.label}"
                         id="c24">
                <af:inputText value="#{row.bindings.DyeingStatus.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingStatus.tooltip}"
                              id="it16">
                  <f:validator binding="#{row.bindings.DyeingStatus.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingWoNo.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingWoNo.label}"
                         id="c28">
                <af:selectOneChoice value="#{row.bindings.DyeingWoNo.inputValue}"
                                    label="#{row.bindings.DyeingWoNo.label}"
                                    required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingWoNo.mandatory}"
                                    shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.DyeingWoNo.tooltip}"
                                    id="soc8">
                  <f:selectItems value="#{row.bindings.DyeingWoNo.items}"
                                 id="si5"/>
                </af:selectOneChoice>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.label}"
                         id="c22">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.ExMill}" id="id12"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.ExMill.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.tooltip}"
                              id="id1">
                  <f:validator binding="#{row.bindings.ExMill.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ExMill.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.label}"
                         id="c47">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.GreigeCompletionDate}"
                                id="id8"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.GreigeCompletionDate.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.tooltip}"
                              id="id21">
                  <f:validator binding="#{row.bindings.GreigeCompletionDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeCompletionDate.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeContractNo.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeContractNo.label}"
                         id="c21">
                <af:inputText value="#{row.bindings.GreigeContractNo.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeContractNo.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeContractNo.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeContractNo.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeContractNo.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.GreigeContractNo.tooltip}"
                              id="it8">
                  <f:validator binding="#{row.bindings.GreigeContractNo.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.label}"
                         id="c40">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.InspectionDate}"
                                id="id15"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.InspectionDate.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.tooltip}"
                              id="id16">
                  <f:validator binding="#{row.bindings.InspectionDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDate.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDone.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDone.label}"
                         id="c25">
                <af:selectOneChoice value="#{row.bindings.InspectionDone.inputValue}"
                                    label="#{row.bindings.InspectionDone.label}"
                                    required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDone.mandatory}"
                                    shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.InspectionDone.tooltip}"
                                    id="soc1">
                  <f:selectItems value="#{row.bindings.InspectionDone.items}"
                                 id="si2"/>
                </af:selectOneChoice>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.label}"
                         id="c48">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.LastUpdateDate}"
                                id="id23"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.LastUpdateDate.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.tooltip}"
                              id="id17">
                  <f:validator binding="#{row.bindings.LastUpdateDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdateDate.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.label}"
                         id="c45">
                <af:inputText value="#{row.bindings.LastUpdatedBy.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LastUpdatedBy.tooltip}"
                              id="it3">
                  <f:validator binding="#{row.bindings.LastUpdatedBy.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.label}"
                         id="c16">
                <af:inputText value="#{row.bindings.LcStatus.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.LcStatus.tooltip}"
                              id="it18">
                  <f:validator binding="#{row.bindings.LcStatus.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.label}"
                         id="c38">
                <af:inputText value="#{row.bindings.Ner.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Ner.tooltip}"
                              id="it14">
                  <f:validator binding="#{row.bindings.Ner.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.label}"
                         id="c49">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.PoRecDate}"
                                id="id2"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.PoRecDate.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.tooltip}"
                              id="id19">
                  <f:validator binding="#{row.bindings.PoRecDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoRecDate.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatusLookupCode.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatusLookupCode.label}"
                         id="c32">
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
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.label}"
                         id="c11">
                <af:inputText value="#{row.bindings.PoType.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoType.tooltip}"
                              id="it24">
                  <f:validator binding="#{row.bindings.PoType.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.label}"
                         id="c20">
                <af:inputText value="#{row.bindings.ProgramId.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.tooltip}"
                              id="it2">
                  <f:validator binding="#{row.bindings.ProgramId.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramId.format}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.label}"
                         id="c5">
                <af:inputText value="#{row.bindings.Remarks.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Remarks.tooltip}"
                              id="it12">
                  <f:validator binding="#{row.bindings.Remarks.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SalesContractNo.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SalesContractNo.label}"
                         id="c14">
                <af:selectOneChoice value="#{row.bindings.SalesContractNo.inputValue}"
                                    label="#{row.bindings.SalesContractNo.label}"
                                    required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SalesContractNo.mandatory}"
                                    shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SalesContractNo.tooltip}"
                                    id="soc2">
                  <f:selectItems value="#{row.bindings.SalesContractNo.items}"
                                 id="si1"/>
                </af:selectOneChoice>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.label}"
                         id="c31">
                <af:inputText value="#{row.bindings.ShipMode.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipMode.tooltip}"
                              id="it9">
                  <f:validator binding="#{row.bindings.ShipMode.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipTerm.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipTerm.label}"
                         id="c46">
                <af:selectOneChoice value="#{row.bindings.ShipTerm.inputValue}"
                                    label="#{row.bindings.ShipTerm.label}"
                                    required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipTerm.mandatory}"
                                    shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipTerm.tooltip}"
                                    id="soc5">
                  <f:selectItems value="#{row.bindings.ShipTerm.items}"
                                 id="si8"/>
                </af:selectOneChoice>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.label}"
                         id="c2">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.ShipmentDate}"
                                id="id24"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.ShipmentDate.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.tooltip}"
                              id="id20">
                  <f:validator binding="#{row.bindings.ShipmentDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipmentDate.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.label}"
                         id="c30">
                <af:inputText value="#{row.bindings.SpHeaderId.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.tooltip}"
                              id="it7">
                  <f:validator binding="#{row.bindings.SpHeaderId.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.SpHeaderId.format}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.label}"
                         id="c6">
                <f:facet name="filter">
                  <af:inputDate value="#{vs.filterCriteria.StitchInputDate}"
                                id="id3"/>
                </f:facet>
                <af:inputDate value="#{row.bindings.StitchInputDate.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.mandatory}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.tooltip}"
                              id="id9">
                  <f:validator binding="#{row.bindings.StitchInputDate.validator}"/>
                  <af:convertDateTime pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.StitchInputDate.format}"/>
                </af:inputDate>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.label}"
                         id="c26">
                <af:inputText value="#{row.bindings.Value.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.tooltip}"
                              id="it1">
                  <f:validator binding="#{row.bindings.Value.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Value.format}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.label}"
                         id="c10">
                <af:inputText value="#{row.bindings.VersionNumber.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.tooltip}"
                              id="it20">
                  <f:validator binding="#{row.bindings.VersionNumber.validator}"/>
                  <af:convertNumber groupingUsed="false"
                                    pattern="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.VersionNumber.format}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.label}"
                         id="c37">
                <af:inputText value="#{row.bindings.ViewerNote.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ViewerNote.tooltip}"
                              id="it15">
                  <f:validator binding="#{row.bindings.ViewerNote.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.label}"
                         id="c15">
                <af:inputText value="#{row.bindings.Article.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Article.tooltip}"
                              id="it23">
                  <f:validator binding="#{row.bindings.Article.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramName.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramName.label}"
                         id="c17">
                <af:selectOneChoice value="#{row.bindings.ProgramName.inputValue}"
                                    label="#{row.bindings.ProgramName.label}"
                                    required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramName.mandatory}"
                                    shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramName.tooltip}"
                                    id="soc4">
                  <f:selectItems value="#{row.bindings.ProgramName.items}"
                                 id="si4"/>
                </af:selectOneChoice>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.label}"
                         id="c1">
                <af:inputText value="#{row.bindings.ProgramManager.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramManager.tooltip}"
                              id="it6">
                  <f:validator binding="#{row.bindings.ProgramManager.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustAcctId.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustAcctId.label}"
                         id="c34">
                <af:selectOneChoice value="#{row.bindings.CustAcctId.inputValue}"
                                    label="#{row.bindings.CustAcctId.label}"
                                    required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustAcctId.mandatory}"
                                    shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustAcctId.tooltip}"
                                    id="soc3">
                  <f:selectItems value="#{row.bindings.CustAcctId.items}"
                                 id="si10"/>
                </af:selectOneChoice>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.label}"
                         id="c43">
                <af:inputText value="#{row.bindings.CustomerName.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.CustomerName.tooltip}"
                              id="it26">
                  <f:validator binding="#{row.bindings.CustomerName.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.label}"
                         id="c50">
                <af:inputText value="#{row.bindings.ProgramPhase.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ProgramPhase.tooltip}"
                              id="it21">
                  <f:validator binding="#{row.bindings.ProgramPhase.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Potypemeaning.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Potypemeaning.label}"
                         id="c8">
                <af:selectOneChoice value="#{row.bindings.Potypemeaning.inputValue}"
                                    label="#{row.bindings.Potypemeaning.label}"
                                    required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Potypemeaning.mandatory}"
                                    shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Potypemeaning.tooltip}"
                                    id="soc6">
                  <f:selectItems value="#{row.bindings.Potypemeaning.items}"
                                 id="si6"/>
                </af:selectOneChoice>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.label}"
                         id="c35">
                <af:inputText value="#{row.bindings.ShipModeL.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.ShipModeL.tooltip}"
                              id="it17">
                  <f:validator binding="#{row.bindings.ShipModeL.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.label}"
                         id="c9">
                <af:inputText value="#{row.bindings.Lastupdatedbyuser.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Lastupdatedbyuser.tooltip}"
                              id="it22">
                  <f:validator binding="#{row.bindings.Lastupdatedbyuser.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.label}"
                         id="c33">
                <af:inputText value="#{row.bindings.Createdbyuser.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Createdbyuser.tooltip}"
                              id="it11">
                  <f:validator binding="#{row.bindings.Createdbyuser.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.label}"
                         id="c27">
                <af:inputText value="#{row.bindings.PoStatus.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.PoStatus.tooltip}"
                              id="it4">
                  <f:validator binding="#{row.bindings.PoStatus.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.label}"
                         id="c36">
                <af:inputText value="#{row.bindings.Delivery.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.Delivery.tooltip}"
                              id="it13">
                  <f:validator binding="#{row.bindings.Delivery.validator}"/>
                </af:inputText>
              </af:column>
              <af:column sortProperty="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.name}"
                         filterable="true" sortable="true"
                         headerText="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.label}"
                         id="c41">
                <af:inputText value="#{row.bindings.MoNo.inputValue}"
                              label="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.label}"
                              required="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.mandatory}"
                              columns="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.displayWidth}"
                              maximumLength="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.precision}"
                              shortDesc="#{bindings.VO_XXSalesPlanningHeaderMgt2.hints.MoNo.tooltip}"
                              id="it28">
                  <f:validator binding="#{row.bindings.MoNo.validator}"/>
                </af:inputText>
              </af:column>
            </af:table>
          </af:panelGroupLayout>
        </f:facet>
      </af:pageTemplate>
    </af:form>
  </af:document>
</f:view>
<%-- 
  oracle-jdev-comment:preferred-managed-bean-name:UserInfo
--%>