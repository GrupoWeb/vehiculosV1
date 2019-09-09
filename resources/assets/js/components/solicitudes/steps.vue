<template>
  <div>
    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span>Proceso de Solicitudes</span>
      </div>

      <div class="container">
        <el-table
            :data="tableData"
            style="width: 100%">
            <el-table-column
            label="Fecha"
            width="180">
            <template slot-scope="scope">
                <i class="el-icon-time"></i>
                <span style="margin-left: 10px">{{ scope.row.date }}</span>
            </template>
            </el-table-column>
            <el-table-column
            label="ID Solicitud"
            width="180">
            <template slot-scope="scope">
                <el-popover trigger="hover" placement="top">
                <p>Name: {{ scope.row.name }}</p>
                <p>Addr: {{ scope.row.address }}</p>
                <div slot="reference" class="name-wrapper">
                    <el-tag size="medium">{{ scope.row.name }}</el-tag>
                </div>
                </el-popover>
            </template>
            </el-table-column>
            <el-table-column
            label="Solicitante"
            width="180">
            <template slot-scope="scope">
                <el-popover trigger="hover" placement="top">
                <p>Name: {{ scope.row.name }}</p>
                <p>Addr: {{ scope.row.address }}</p>
                <div slot="reference" class="name-wrapper">
                    <el-tag size="medium">{{ scope.row.name }}</el-tag>
                </div>
                </el-popover>
            </template>
            </el-table-column>
            <el-table-column
            label="Operaciones">
            <template slot-scope="scope">
                <el-button
                size="mini"
                @click="handleEdit(scope.$index, scope.row)">Aprobar
                </el-button>
                <el-button
                size="mini"
                @click="handleEdit(scope.$index, scope.row)">Autorizar
                </el-button>
                <el-button
                size="mini"
                type="danger"
                @click="handleDelete(scope.$index, scope.row)">Confirmar</el-button>
            </template>
            </el-table-column>
        </el-table>
      </div>
    </el-card>
  </div>
</template>

<style >

</style>

<script>
  export default {
    data() {
      return {
        tableData: [{
          date: '2016-05-03',
          name: 'Tom',
          address: 'No. 189, Grove St, Los Angeles'
        }, {
          date: '2016-05-02',
          name: 'Tom',
          address: 'No. 189, Grove St, Los Angeles'
        }, {
          date: '2016-05-04',
          name: 'Tom',
          address: 'No. 189, Grove St, Los Angeles'
        }, {
          date: '2016-05-01',
          name: 'Tom',
          address: 'No. 189, Grove St, Los Angeles'
        }]
      }
    },
    methods: {
      handleEdit(index, row) {
        console.log(index, row);
      },
      handleDelete(index, row) {
        console.log(index, row);
      }
    }
  }
</script>