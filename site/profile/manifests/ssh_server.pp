class profile::ssh_server {
      package {'openssh-server':
              ensure +> present,
      }
      service {'sshd':
              ensure => 'running',
              enable => 'true',
      }
      ssh_authorized_key { 'root@master.puppet.vm':
              ensure => present,
              user => 'root',
              type => 'ssh-rsa',
              key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDO98054ihwOCCpzZNl6df6yP78DZr8ir7L4v5AS6/cCwTgjs+R2Hp8AT1UpghaN8dtq2zkGmkCBoxBrDiQU/NWGQSYSg7MRewVSZrvglk9wt4A41xVwrNPl8upO85wRFmCIAj8M8S2TxlxBKxbbXD2nOIUD+tEovsQDtVxDNSHca0LOQT6Z8peEZTpoWMXpz/5hE2Znr52eAkwJzT5ZQ2qxRCBCEAANH8l/Ts1A2j8bqHBBkOgs/IXJiX07ZXIe0tLbrtSW/1vmCWIs9/11iDmCzGaV+MvW6NkVYogjgLYXyM5AMQukjt4aC3ZneMDgwW07B8a69torEwE4qcP7vX3',
      }
}
