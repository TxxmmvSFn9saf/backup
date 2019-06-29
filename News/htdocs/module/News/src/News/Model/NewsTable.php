<?php

namespace VkReconciliation\Model;
use Zend\Db\Sql\Select;

class ReconciliationTable extends \ZmDb\Gateway\Table
{

    public function getReconciliation()
    {
        return $this->getAdapter()->query("
        SELECT * FROM reconciliation
        ", [])->toArray();
    }

    public function getAccount()
    {
        return $this->getAdapter()->query("
        SELECT * FROM accounts
        ", [])->toArray();
    }

    public function getOrganization()
    {
        return $this->getAdapter()->query("
        SELECT * FROM organization
        ", [])->toArray();
    }
}
