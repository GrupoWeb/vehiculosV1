<template>
  <div>
    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span>Solicitud de Ingreso</span>
      </div>

      <div class="container">
        <el-form ref="form" :model="sizeForm" label-width="200px" >
            <el-form-item label="Tipo de Solicitud:">
                <el-radio-group v-model="sizeForm.radio1" @change="changeValue">
                    <el-radio-button label="IDA-ESPERA-REGRESO"></el-radio-button>
                    <el-radio-button label="IDA-REGRESO"></el-radio-button>
                    <el-radio-button label="IDA"></el-radio-button>
                    <el-radio-button label="REGRESO"></el-radio-button>
                </el-radio-group>
            </el-form-item>
            <div >
                <el-form-item label="Fecha Salida:" v-if="this.fechaSalida == 1">
                    <el-col :span="11">
                        <el-date-picker type="date" placeholder="Pick a date" v-model="sizeForm.FechaSalida" style="width: 100%;"></el-date-picker>
                    </el-col>
                    <el-col :span="11">
                        <el-time-picker placeholder="Pick a time" v-model="sizeForm.HoraSalida" style="width: 100%;"></el-time-picker>
                    </el-col>
                </el-form-item>
                <el-form-item label="Fecha Entrada:" v-if="this.fechaEntrada == 1">
                    <el-col :span="11">
                        <el-date-picker type="date" placeholder="Pick a date" v-model="sizeForm.FechaEntrada" style="width: 100%;"></el-date-picker>
                    </el-col>
                    <el-col :span="11">
                        <el-time-picker placeholder="Pick a time" v-model="sizeForm.HoraEntrada" style="width: 100%;"></el-time-picker>
                    </el-col>
                </el-form-item>
            </div>
            <el-form-item label="Usuario Solicitante:" >
                <el-select v-model="sizeForm.solicitante" placeholder="please select your zone" style="width: 100%;">
                    <el-option label="Zone one" value="shanghai"></el-option>
                    <el-option label="Zone two" value="beijing"></el-option>
                </el-select>
            </el-form-item>
            <div >
                <el-form-item label="Departamento:" >
                    <el-col :span="9">
                        <el-input type="age" v-model.number="sizeForm.Departamento" autocomplete="off" style="width: 100%;"></el-input>
                    </el-col>
                </el-form-item>
                <el-form-item label="Municipio:">
                    <el-col :span="9">
                        <el-input type="age" v-model.number="sizeForm.Municipio" autocomplete="off" style="width: 100%;"></el-input>
                    </el-col>
                </el-form-item>
                <el-form-item label="Observaciones:" prop="desc">
                    <el-input type="textarea" v-model="sizeForm.Observaciones"></el-input>
                </el-form-item>
                <el-form-item>
                    <el-button type="primary" @click="onSubmit">Almacenar</el-button>
                </el-form-item>
            </div>
        </el-form>
      </div>
    </el-card>
  </div>
</template>

<style >

</style>

<script>
  export default {
    data () {
      return {
        sizeForm: {
            radio1: 'New York',
            FechaSalida: '',
            HoraSalida: '',
            FechaEntrada: '',
            HoraEntrada: '',
            solicitante:'',
            Departamento:'',
            Municipio: '',
            Observaciones:''
         
        },
        fechaSalida: 0,
        fechaEntrada: 0,
      };
    },
    methods: {
    	changeValue(data) {
            
            if(data == 'IDA-ESPERA-REGRESO' || data == 'IDA-REGRESO'){
                this.fechaSalida = 1;
                this.fechaEntrada = 1;
            }else if(data == 'IDA'){
                this.fechaSalida = 1;
                this.fechaEntrada = 0;
            }else if(data == 'REGRESO'){
                this.fechaSalida = 0;
                this.fechaEntrada = 1;
            }
          
      },
    }
  }
</script>