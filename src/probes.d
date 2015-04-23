provider plproxy {

   probe main__error(char * name, int arg_count, char * msg);

   probe proxy__execstart(unsigned long txid, unsigned int oid, char * funcname);

   probe proxy__execdone(unsigned long txid);

   probe proxy__execexcept(unsigned long txid, int errcode);

   probe shard__connprep(unsigned long txid, char * connstr);

   probe shard__connready(unsigned long txid, char * connstr);

   probe shard__sendstart(unsigned long txid, char * connstr);

   probe shard__senddone(unsigned long txid, char * connstr);

   probe shard__resultswait(unsigned long txid, char * connstr);

   probe shard__resultsrcvd(unsigned long txid, char * connstr);

   probe shard__resultsdone(unsigned long txid, char * connstr);
};
