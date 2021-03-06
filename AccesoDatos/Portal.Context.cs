﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AccesoDatos
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class skytexEntities : DbContext
    {
        public skytexEntities()
            : base("name=skytexEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<xcuser> xcuser { get; set; }
    
        public virtual ObjectResult<consWeb_Result> consWeb(string opc, string prm1, string prm2, string prm3, Nullable<int> prm4, string prm5, string prm6, string prm7, string prm8)
        {
            var opcParameter = opc != null ?
                new ObjectParameter("opc", opc) :
                new ObjectParameter("opc", typeof(string));
    
            var prm1Parameter = prm1 != null ?
                new ObjectParameter("prm1", prm1) :
                new ObjectParameter("prm1", typeof(string));
    
            var prm2Parameter = prm2 != null ?
                new ObjectParameter("prm2", prm2) :
                new ObjectParameter("prm2", typeof(string));
    
            var prm3Parameter = prm3 != null ?
                new ObjectParameter("prm3", prm3) :
                new ObjectParameter("prm3", typeof(string));
    
            var prm4Parameter = prm4.HasValue ?
                new ObjectParameter("prm4", prm4) :
                new ObjectParameter("prm4", typeof(int));
    
            var prm5Parameter = prm5 != null ?
                new ObjectParameter("prm5", prm5) :
                new ObjectParameter("prm5", typeof(string));
    
            var prm6Parameter = prm6 != null ?
                new ObjectParameter("prm6", prm6) :
                new ObjectParameter("prm6", typeof(string));
    
            var prm7Parameter = prm7 != null ?
                new ObjectParameter("prm7", prm7) :
                new ObjectParameter("prm7", typeof(string));
    
            var prm8Parameter = prm8 != null ?
                new ObjectParameter("prm8", prm8) :
                new ObjectParameter("prm8", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<consWeb_Result>("consWeb", opcParameter, prm1Parameter, prm2Parameter, prm3Parameter, prm4Parameter, prm5Parameter, prm6Parameter, prm7Parameter, prm8Parameter);
        }
    
        public virtual ObjectResult<sp_accesoweb_Result> sp_accesoweb(string rFC, string password)
        {
            var rFCParameter = rFC != null ?
                new ObjectParameter("RFC", rFC) :
                new ObjectParameter("RFC", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_accesoweb_Result>("sp_accesoweb", rFCParameter, passwordParameter);
        }
    
        public virtual ObjectResult<sp_cboWebXML_Result> sp_cboWebXML(string rfc_emisor, string cbo, string prm1, string prm2)
        {
            var rfc_emisorParameter = rfc_emisor != null ?
                new ObjectParameter("rfc_emisor", rfc_emisor) :
                new ObjectParameter("rfc_emisor", typeof(string));
    
            var cboParameter = cbo != null ?
                new ObjectParameter("cbo", cbo) :
                new ObjectParameter("cbo", typeof(string));
    
            var prm1Parameter = prm1 != null ?
                new ObjectParameter("prm1", prm1) :
                new ObjectParameter("prm1", typeof(string));
    
            var prm2Parameter = prm2 != null ?
                new ObjectParameter("prm2", prm2) :
                new ObjectParameter("prm2", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_cboWebXML_Result>("sp_cboWebXML", rfc_emisorParameter, cboParameter, prm1Parameter, prm2Parameter);
        }
    }
}
