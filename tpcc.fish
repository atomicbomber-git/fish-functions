function tpcc
/home/atomicbomber/clones/sysbench-tpcc/tpcc.lua --pgsql-user=$argv[1] --pgsql-port=5432 --pgsql-db=$argv[2] --time=10 --threads=2 --report-interval=1 --tables=2 --scale=2 --use_fk=0  --trx_level=RC --db-driver=pgsql prepare
/home/atomicbomber/clones/sysbench-tpcc/tpcc.lua --pgsql-user=$argv[1] --pgsql-port=5432 --pgsql-db=$argv[2] --time=10 --threads=2 --report-interval=1 --tables=2 --scale=2 --use_fk=0  --trx_level=RC --db-driver=pgsql run
end
