SELECT count(1) FROM `persp_clients` WHERE done=0 union all SELECT count(1) FROM `persp_clients` WHERE done=1 union all SELECT count(1) FROM `persp_clients` p WHERE done=1 and not exists (select 1 from `persp_clienthistory` h where h.pk=p.pk)