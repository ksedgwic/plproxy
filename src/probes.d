provider plproxy {

   probe main__error(char * name, int arg_count, char * msg);

   probe proxy__execstart(unsigned long txid, unsigned int oid, char * funcname);

   probe proxy__execdone(unsigned long txid);

   probe proxy__execexcept(unsigned long txid, int errcode);

   probe proxy__cancelstart(unsigned long txid);

   probe proxy__canceldone(unsigned long txid);

   probe proxy__pollstart(unsigned long txid);

   probe proxy__pollnone(unsigned long txid);

   probe proxy__pollintr(unsigned long txid);

   probe proxy__polldone(unsigned long txid);

   probe shard__connprep(unsigned long txid, char * connstr);

   probe shard__connready(unsigned long txid, char * connstr);

   probe shard__sendstart(unsigned long txid, char * connstr);

   probe shard__senddone(unsigned long txid, char * connstr);

   probe shard__resultswait(unsigned long txid, char * connstr);

   probe shard__resultsrcvd(unsigned long txid, char * connstr);

   probe shard__resultsdone(unsigned long txid, char * connstr);

   probe shard__canceldconn(unsigned long txid, char * connstr);

   probe shard__cancelwait(unsigned long txid, char * connstr);

   probe shard__canceldone(unsigned long txid, char * connstr);
};