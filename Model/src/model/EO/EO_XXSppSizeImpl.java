package model.EO;

import javax.faces.context.FacesContext;

import model.VO.VO_SalesPlanningHeaderImpl;
import model.VO.VO_XXSppSizeRowImpl;

import oracle.jbo.Key;
import oracle.jbo.domain.Date;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;

import org.apache.myfaces.trinidad.render.ExtendedRenderKitService;
import org.apache.myfaces.trinidad.util.Service;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri May 23 08:02:12 PKT 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class EO_XXSppSizeImpl extends EntityImpl {
    private static EntityDefImpl mDefinitionObject;
    private int count;

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        ProgramId {
            public Object get(EO_XXSppSizeImpl obj) {
                return obj.getProgramId();
            }

            public void put(EO_XXSppSizeImpl obj, Object value) {
                obj.setProgramId((Number)value);
            }
        }
        ,
        SizeId {
            public Object get(EO_XXSppSizeImpl obj) {
                return obj.getSizeId();
            }

            public void put(EO_XXSppSizeImpl obj, Object value) {
                obj.setSizeId((String)value);
            }
        }
        ,
        CreationDate {
            public Object get(EO_XXSppSizeImpl obj) {
                return obj.getCreationDate();
            }

            public void put(EO_XXSppSizeImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        CreatedBy {
            public Object get(EO_XXSppSizeImpl obj) {
                return obj.getCreatedBy();
            }

            public void put(EO_XXSppSizeImpl obj, Object value) {
                obj.setCreatedBy((Number)value);
            }
        }
        ,
        LastUpdateDate {
            public Object get(EO_XXSppSizeImpl obj) {
                return obj.getLastUpdateDate();
            }

            public void put(EO_XXSppSizeImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        LastUpdatedBy {
            public Object get(EO_XXSppSizeImpl obj) {
                return obj.getLastUpdatedBy();
            }

            public void put(EO_XXSppSizeImpl obj, Object value) {
                obj.setLastUpdatedBy((Number)value);
            }
        }
        ,
        VersionNumber {
            public Object get(EO_XXSppSizeImpl obj) {
                return obj.getVersionNumber();
            }

            public void put(EO_XXSppSizeImpl obj, Object value) {
                obj.setAttributeInternal(index(), value);
            }
        }
        ,
        EO_XXSalesPlanningProgramUpdate {
            public Object get(EO_XXSppSizeImpl obj) {
                return obj.getEO_XXSalesPlanningProgramUpdate();
            }

            public void put(EO_XXSppSizeImpl obj, Object value) {
                obj.setEO_XXSalesPlanningProgramUpdate((EntityImpl)value);
            }
        }
        ;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public abstract Object get(EO_XXSppSizeImpl object);

        public abstract void put(EO_XXSppSizeImpl object, Object value);

        public int index() {
            return AttributesEnum.firstIndex() + ordinal();
        }

        public static final int firstIndex() {
            return firstIndex;
        }

        public static int count() {
            return AttributesEnum.firstIndex() + AttributesEnum.staticValues().length;
        }

        public static final AttributesEnum[] staticValues() {
            if (vals == null) {
                vals = AttributesEnum.values();
            }
            return vals;
        }
    }
    public static final int PROGRAMID = AttributesEnum.ProgramId.index();
    public static final int SIZEID = AttributesEnum.SizeId.index();
    public static final int CREATIONDATE = AttributesEnum.CreationDate.index();
    public static final int CREATEDBY = AttributesEnum.CreatedBy.index();
    public static final int LASTUPDATEDATE = AttributesEnum.LastUpdateDate.index();
    public static final int LASTUPDATEDBY = AttributesEnum.LastUpdatedBy.index();
    public static final int VERSIONNUMBER = AttributesEnum.VersionNumber.index();
    public static final int EO_XXSALESPLANNINGPROGRAMUPDATE = AttributesEnum.EO_XXSalesPlanningProgramUpdate.index();

    /**
     * This is the default constructor (do not remove).
     */
    public EO_XXSppSizeImpl() {
    }

    /**
     * Gets the attribute value for ProgramId, using the alias name ProgramId.
     * @return the ProgramId
     */
    public Number getProgramId() {
        return (Number)getAttributeInternal(PROGRAMID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ProgramId.
     * @param value value to set the ProgramId
     */
    public void setProgramId(Number value) {
        setAttributeInternal(PROGRAMID, value);
    }

    /**
     * Gets the attribute value for SizeId, using the alias name SizeId.
     * @return the SizeId
     */
    public String getSizeId() {
        return (String)getAttributeInternal(SIZEID);
    }

    /**
     * Sets <code>value</code> as the attribute value for SizeId.
     * @param value value to set the SizeId
     */
    public void setSizeId(String value) {
        
                setAttributeInternal(SIZEID, value);
               
        
        
        

        
    }
    public static void runJavaScriptCode(String javascriptCode) {
        FacesContext facesCtx = FacesContext.getCurrentInstance();

        ExtendedRenderKitService service =
            Service.getRenderKitService(facesCtx,
                                        ExtendedRenderKitService.class);

        service.addScript(facesCtx, javascriptCode);
    }

    /**
     * Gets the attribute value for CreationDate, using the alias name CreationDate.
     * @return the CreationDate
     */
    public Date getCreationDate() {
        return (Date)getAttributeInternal(CREATIONDATE);
    }

    /**
     * Gets the attribute value for CreatedBy, using the alias name CreatedBy.
     * @return the CreatedBy
     */
    public Number getCreatedBy() {
        return (Number)getAttributeInternal(CREATEDBY);
    }

    /**
     * Sets <code>value</code> as the attribute value for CreatedBy.
     * @param value value to set the CreatedBy
     */
    public void setCreatedBy(Number value) {
        setAttributeInternal(CREATEDBY, value);
    }

    /**
     * Gets the attribute value for LastUpdateDate, using the alias name LastUpdateDate.
     * @return the LastUpdateDate
     */
    public Date getLastUpdateDate() {
        return (Date)getAttributeInternal(LASTUPDATEDATE);
    }

    /**
     * Gets the attribute value for LastUpdatedBy, using the alias name LastUpdatedBy.
     * @return the LastUpdatedBy
     */
    public Number getLastUpdatedBy() {
        return (Number)getAttributeInternal(LASTUPDATEDBY);
    }

    /**
     * Sets <code>value</code> as the attribute value for LastUpdatedBy.
     * @param value value to set the LastUpdatedBy
     */
    public void setLastUpdatedBy(Number value) {
        setAttributeInternal(LASTUPDATEDBY, value);
    }

    /**
     * Gets the attribute value for VersionNumber, using the alias name VersionNumber.
     * @return the VersionNumber
     */
    public Number getVersionNumber() {
        return (Number)getAttributeInternal(VERSIONNUMBER);
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
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public EntityImpl getEO_XXSalesPlanningProgramUpdate() {
        return (EntityImpl)getAttributeInternal(EO_XXSALESPLANNINGPROGRAMUPDATE);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setEO_XXSalesPlanningProgramUpdate(EntityImpl value) {
        setAttributeInternal(EO_XXSALESPLANNINGPROGRAMUPDATE, value);
    }

    /**
     * @param programId key constituent
     * @param sizeId key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(Number programId, String sizeId) {
        return new Key(new Object[]{programId, sizeId});
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        if (mDefinitionObject == null) {
            mDefinitionObject = EntityDefImpl.findDefObject("model.EO.EO_XXSppSize");
        }
        return mDefinitionObject;
    }
}