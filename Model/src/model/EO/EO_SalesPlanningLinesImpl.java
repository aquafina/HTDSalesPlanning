package model.EO;

import oracle.jbo.Key;
import oracle.jbo.domain.Date;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.SequenceImpl;
import oracle.jbo.server.TransactionEvent;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat Mar 29 14:11:37 CET 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class EO_SalesPlanningLinesImpl extends EntityImpl {
    private static EntityDefImpl mDefinitionObject;

    

   

    

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        SpHeaderId {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getSpHeaderId();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setSpHeaderId((Number)value);
            }
        }
        ,
        SpLineId {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getSpLineId();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setSpLineId((Number)value);
            }
        }
        ,
        Quantity {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getQuantity();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setQuantity((Number)value);
            }
        }
        ,
        Uom {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getUom();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setUom((String)value);
            }
        }
        ,
        Remarks {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getRemarks();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setRemarks((String)value);
            }
        }
        ,
        CreatedBy {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getCreatedBy();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setCreatedBy((String)value);
            }
        }
        ,
        CreationDate {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getCreationDate();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setCreationDate((Date)value);
            }
        }
        ,
        LastUpdatedBy {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getLastUpdatedBy();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setLastUpdatedBy((String)value);
            }
        }
        ,
        LastUpdateDate {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getLastUpdateDate();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setLastUpdateDate((Date)value);
            }
        }
        ,
        ArticleId {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getArticleId();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setArticleId((Number)value);
            }
        }
        ,
        VersionNumber {
            public Object get(EO_SalesPlanningLinesImpl obj) {
                return obj.getVersionNumber();
            }

            public void put(EO_SalesPlanningLinesImpl obj, Object value) {
                obj.setVersionNumber((Number)value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(EO_SalesPlanningLinesImpl object);

        public abstract void put(EO_SalesPlanningLinesImpl object,
                                 Object value);

        public int index() {
            return AttributesEnum.firstIndex() + ordinal();
        }

        public static final int firstIndex() {
            return firstIndex;
        }

        public static int count() {
            return AttributesEnum.firstIndex() +
                AttributesEnum.staticValues().length;
        }

        public static final AttributesEnum[] staticValues() {
            if (vals == null) {
                vals = AttributesEnum.values();
            }
            return vals;
        }
    }


    public static final int SPHEADERID = AttributesEnum.SpHeaderId.index();
    public static final int SPLINEID = AttributesEnum.SpLineId.index();
    public static final int QUANTITY = AttributesEnum.Quantity.index();
    public static final int UOM = AttributesEnum.Uom.index();
    public static final int REMARKS = AttributesEnum.Remarks.index();
    public static final int CREATEDBY = AttributesEnum.CreatedBy.index();
    public static final int CREATIONDATE = AttributesEnum.CreationDate.index();
    public static final int LASTUPDATEDBY = AttributesEnum.LastUpdatedBy.index();
    public static final int LASTUPDATEDATE = AttributesEnum.LastUpdateDate.index();
    public static final int ARTICLEID = AttributesEnum.ArticleId.index();
    public static final int VERSIONNUMBER = AttributesEnum.VersionNumber.index();

    /**
     * This is the default constructor (do not remove).
     */
    public EO_SalesPlanningLinesImpl() {
    }


    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        if (mDefinitionObject == null) {
            mDefinitionObject = EntityDefImpl.findDefObject("model.EO.EO_SalesPlanningLines");
        }
        return mDefinitionObject;
    }

    /**
     * Gets the attribute value for SpHeaderId, using the alias name SpHeaderId.
     * @return the SpHeaderId
     */
    public Number getSpHeaderId() {
        return (Number)getAttributeInternal(SPHEADERID);
    }

    /**
     * Sets <code>value</code> as the attribute value for SpHeaderId.
     * @param value value to set the SpHeaderId
     */
    public void setSpHeaderId(Number value) {
        setAttributeInternal(SPHEADERID, value);
    }

    /**
     * Gets the attribute value for SpLineId, using the alias name SpLineId.
     * @return the SpLineId
     */
    public Number getSpLineId() {
        return (Number)getAttributeInternal(SPLINEID);
    }

    /**
     * Sets <code>value</code> as the attribute value for SpLineId.
     * @param value value to set the SpLineId
     */
    public void setSpLineId(Number value) {
        setAttributeInternal(SPLINEID, value);
    }

    /**
     * Gets the attribute value for Quantity, using the alias name Quantity.
     * @return the Quantity
     */
    public Number getQuantity() {
        return (Number)getAttributeInternal(QUANTITY);
    }

    /**
     * Sets <code>value</code> as the attribute value for Quantity.
     * @param value value to set the Quantity
     */
    public void setQuantity(Number value) {
        setAttributeInternal(QUANTITY, value);
    }

    /**
     * Gets the attribute value for Uom, using the alias name Uom.
     * @return the Uom
     */
    public String getUom() {
        return (String)getAttributeInternal(UOM);
    }

    /**
     * Sets <code>value</code> as the attribute value for Uom.
     * @param value value to set the Uom
     */
    public void setUom(String value) {
        setAttributeInternal(UOM, value);
    }

    /**
     * Gets the attribute value for Remarks, using the alias name Remarks.
     * @return the Remarks
     */
    public String getRemarks() {
        return (String)getAttributeInternal(REMARKS);
    }

    /**
     * Sets <code>value</code> as the attribute value for Remarks.
     * @param value value to set the Remarks
     */
    public void setRemarks(String value) {
        setAttributeInternal(REMARKS, value);
    }

    /**
     * Gets the attribute value for CreatedBy, using the alias name CreatedBy.
     * @return the CreatedBy
     */
    public String getCreatedBy() {
        return (String)getAttributeInternal(CREATEDBY);
    }

    /**
     * Sets <code>value</code> as the attribute value for CreatedBy.
     * @param value value to set the CreatedBy
     */
    public void setCreatedBy(String value) {
        setAttributeInternal(CREATEDBY, value);
    }

    /**
     * Gets the attribute value for CreationDate, using the alias name CreationDate.
     * @return the CreationDate
     */
    public Date getCreationDate() {
        return (Date)getAttributeInternal(CREATIONDATE);
    }

    /**
     * Sets <code>value</code> as the attribute value for CreationDate.
     * @param value value to set the CreationDate
     */
    public void setCreationDate(Date value) {
        setAttributeInternal(CREATIONDATE, value);
    }

    /**
     * Gets the attribute value for LastUpdatedBy, using the alias name LastUpdatedBy.
     * @return the LastUpdatedBy
     */
    public String getLastUpdatedBy() {
        return (String)getAttributeInternal(LASTUPDATEDBY);
    }

    /**
     * Sets <code>value</code> as the attribute value for LastUpdatedBy.
     * @param value value to set the LastUpdatedBy
     */
    public void setLastUpdatedBy(String value) {
        setAttributeInternal(LASTUPDATEDBY, value);
    }

    /**
     * Gets the attribute value for LastUpdateDate, using the alias name LastUpdateDate.
     * @return the LastUpdateDate
     */
    public Date getLastUpdateDate() {
        return (Date)getAttributeInternal(LASTUPDATEDATE);
    }

    /**
     * Sets <code>value</code> as the attribute value for LastUpdateDate.
     * @param value value to set the LastUpdateDate
     */
    public void setLastUpdateDate(Date value) {
        setAttributeInternal(LASTUPDATEDATE, value);
    }

    /**
     * Gets the attribute value for ArticleId, using the alias name ArticleId.
     * @return the ArticleId
     */
    public Number getArticleId() {
        return (Number)getAttributeInternal(ARTICLEID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ArticleId.
     * @param value value to set the ArticleId
     */
    public void setArticleId(Number value) {
        setAttributeInternal(ARTICLEID, value);
    }

    /**
     * Gets the attribute value for VersionNumber, using the alias name VersionNumber.
     * @return the VersionNumber
     */
    public Number getVersionNumber() {
        return (Number)getAttributeInternal(VERSIONNUMBER);
    }

    /**
     * Sets <code>value</code> as the attribute value for VersionNumber.
     * @param value value to set the VersionNumber
     */
    public void setVersionNumber(Number value) {
        setAttributeInternal(VERSIONNUMBER, value);
    }

    /**
     * getAttrInvokeAccessor: generated method. Do not modify.
     * @param index the index identifying the attribute
     * @param attrDef the attribute

     * @return the attribute value
     * @throws Exception
     */
    protected Object getAttrInvokeAccessor(int index,
                                           AttributeDefImpl attrDef) throws Exception {
        if ((index >= AttributesEnum.firstIndex()) && (index < AttributesEnum.count())) {
            return AttributesEnum.staticValues()[index - AttributesEnum.firstIndex()].get(this);
        }
        return super.getAttrInvokeAccessor(index, attrDef);
    }

    /**
     * setAttrInvokeAccessor: generated method. Do not modify.
     * @param index the index identifying the attribute
     * @param value the value to assign to the attribute
     * @param attrDef the attribute

     * @throws Exception
     */
    protected void setAttrInvokeAccessor(int index, Object value,
                                         AttributeDefImpl attrDef) throws Exception {
        if ((index >= AttributesEnum.firstIndex()) && (index < AttributesEnum.count())) {
            AttributesEnum.staticValues()[index - AttributesEnum.firstIndex()].put(this, value);
            return;
        }
        super.setAttrInvokeAccessor(index, value, attrDef);
    }


    /**
     * @param spLineId key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(Number spLineId) {
        return new Key(new Object[]{spLineId});
    }

    /**
     * Add locking logic here.
     */
    public void lock() {
        super.lock();
    }

    /**
     * Custom DML update/insert/delete logic here.
     * @param operation the operation type
     * @param e the transaction event
     */
    protected void doDML(int operation, TransactionEvent e) {
        
        if (operation == DML_INSERT) {
            this.setSpLineId(new SequenceImpl("xx_sales_planning_lines_seq",
                                              getDBTransaction()).getSequenceNumber());
            
        }
        
        super.doDML(operation, e);
    }
}
