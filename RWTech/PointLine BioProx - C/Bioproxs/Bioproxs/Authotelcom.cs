﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;

namespace Bioproxs
{
    //[DllImport(@"authotelcom.dll", CallingConvention = CallingConvention.StdCall, CharSet = CharSet.Ansi)]
    //static extern void ChamaErro([MarshalAs(UnmanagedType.AnsiBStr)]string Erro);
    //[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]     public struct TMarcacao     {         public uint nsr;         public uint cont;         public string pis;         public byte dia;         public byte mes;         public ushort ano;         public byte hora;         public byte minuto;     }      //[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]     public struct TControle     {         public short total;         public short atual;         public byte start;         public byte erro;         public short porta;         public byte s_tipo;         public byte modelo;         public byte[] endereco;         public byte[] backup;         public int baudrate;         public byte[] hash;     }      //[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]     public struct TDados     {
        public byte[] adcOUSubst; // OK! Obs.: ShortString = 256
                                  // bytes. [0]: deve conter a
                                  // quantidade de bytes da
                                  // string.
        public byte[] pin; // OK!byte[256]
        public byte[] pis; // OK!byte[256]
        public byte[] identificador; // OK!byte[256]
        public byte[] cei; // OK!byte[256]
        public byte[] razaoSocial; // OK!byte[256]
        public byte[] localPrestServ; // OK!byte[256]
        public byte[] tipoId; // OK!byte[256]
        public byte[] nome; // OK!byte[256]
        public byte[] id_bio; // OK!byte[256]
        public byte[] numCartao; // OK!byte[256]
        public byte[] senha; // OK!byte[256]
        public byte[] mestre; // OK!byte[256]
        public byte[] verifica; // OK!byte[256]

        public byte[] cpf;
        //public byte[] cmp;
        //public byte[] chave;
    }

    //[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]
    public struct TDigitais     {         public string pin;         public string dedo;     }

    class Authotelcom
    {
        [DllImport("authotelcom.dll", EntryPoint = "configura", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        [return: MarshalAs(UnmanagedType.AnsiBStr)]
        public static extern string configura(string tipo, string ip, string host, string porta, string end_dev, string datahorai,
            string datahoraf, string diasSem, string diasSemF, string info, short com, short total, short atual, short duracaoToque,
            short flag, short config, short qtde_rel, short baud, string hash);

        [DllImport("authotelcom.dll", EntryPoint = "recebeMarcacoes", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool recebeMarcacoes(TMarcacao[] marcacao, TControle[] controle, short evento);

        [DllImport("authotelcom.dll", EntryPoint = "recebeMarcacoesTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool recebeMarcacoesTCP(TMarcacao[] marcacao, TControle[] controle, short evento);

        [DllImport("authotelcom.dll", EntryPoint = "enviaTrabalhador", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool enviaTrabalhador(TDados[] dados, TControle[] controle);

        [DllImport("authotelcom.dll", EntryPoint = "enviaTrabalhadorTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool enviaTrabalhadorTCP(TDados[] dados, TControle[] controle);

        [DllImport("authotelcom.dll", EntryPoint = "enviaEmpregador", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool enviaEmpregador(TDados dados, TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "enviaEmpregadorTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        //[return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool enviaEmpregadorTCP(TDados dados, TControle controle);

        [DllImport("authotelcom.dll", BestFitMapping = true, CallingConvention = CallingConvention.StdCall, EntryPoint = "enviaEmpregadorTCP", ExactSpelling = true, PreserveSig = true, SetLastError = true, ThrowOnUnmappableChar = false)]
        //[return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool enviaEmpregadorTCP(ref TDados dados, ref TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "enviaDigitaisTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool enviaDigitaisTCP(TDigitais digitais, TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "leEmpregador", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool leEmpregador(TDados dados, TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "leEmpregadorTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern bool leEmpregadorTCP(TDados dados, TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "leEmpregadorTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern bool leEmpregadorTCP(out TDados dados, TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "leTrabalhador", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool leTrabalhador(TDados dados, TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "leTrabalhadorTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern bool leTrabalhadorTCP(TDados dados, out TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "leTrabalhadorTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern bool leTrabalhadorTCP(out TDados dados, TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "leDigitaisTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool leDigitaisTCP(TDigitais digitais, TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "backupDigitais", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool backupDigitais(TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "backupTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool backupTCP(TControle controle);

        [DllImport("authotelcom.dll", EntryPoint = "restauraBackup", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool restauraBackup(TControle controle, char caminho);

        [DllImport("authotelcom.dll", EntryPoint = "restauraBackupTCP", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern unsafe bool restauraBackupTCP(TControle controle, char caminho);
        
        [DllImport("authotelcom.dll", EntryPoint = "fecharComunicacao", ExactSpelling = true, CallingConvention = CallingConvention.StdCall)]
        public static extern void fecharComunicacao(); 
    }
}
