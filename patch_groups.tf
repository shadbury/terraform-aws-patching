
########## SCAN ##########
resource "aws_ssm_patch_group" "patchgroup-scan-default" {
  count = var.default_scan ? 9 : 0
  baseline_id = element([
    data.aws_ssm_patch_baseline.windows.id,
    data.aws_ssm_patch_baseline.suse.id,
    data.aws_ssm_patch_baseline.ubuntu.id,
    data.aws_ssm_patch_baseline.debian.id,
    data.aws_ssm_patch_baseline.rhel.id,
    data.aws_ssm_patch_baseline.amazon.id,
    data.aws_ssm_patch_baseline.amazon2.id,
    data.aws_ssm_patch_baseline.centos.id,
    data.aws_ssm_patch_baseline.oracle.id
  ], count.index)
  patch_group = "SCAN"
}

########## AZ-A ##############
resource "aws_ssm_patch_group" "patchgroup-install-default-a" {
  count = var.default_patch_groups ? 9 : 0
  baseline_id = element([
    data.aws_ssm_patch_baseline.windows.id,
    data.aws_ssm_patch_baseline.suse.id,
    data.aws_ssm_patch_baseline.ubuntu.id,
    data.aws_ssm_patch_baseline.debian.id,
    data.aws_ssm_patch_baseline.rhel.id,
    data.aws_ssm_patch_baseline.amazon.id,
    data.aws_ssm_patch_baseline.amazon2.id,
    data.aws_ssm_patch_baseline.centos.id,
    data.aws_ssm_patch_baseline.oracle.id
  ], count.index)
  patch_group = var.maintenance_windows[0]
}

############## AZ-B ##############
resource "aws_ssm_patch_group" "patchgroup-install-default-b" {
  count = var.default_patch_groups ? 9 : 0
  baseline_id = element([
    data.aws_ssm_patch_baseline.windows.id,
    data.aws_ssm_patch_baseline.suse.id,
    data.aws_ssm_patch_baseline.ubuntu.id,
    data.aws_ssm_patch_baseline.debian.id,
    data.aws_ssm_patch_baseline.rhel.id,
    data.aws_ssm_patch_baseline.amazon.id,
    data.aws_ssm_patch_baseline.amazon2.id,
    data.aws_ssm_patch_baseline.centos.id,
    data.aws_ssm_patch_baseline.oracle.id
  ], count.index)
  patch_group = var.maintenance_windows[1]
}

############## AZ-C ##############
resource "aws_ssm_patch_group" "patchgroup-install-default-c" {
  count = var.default_patch_groups ? 9 : 0
  baseline_id = element([
    data.aws_ssm_patch_baseline.windows.id,
    data.aws_ssm_patch_baseline.suse.id,
    data.aws_ssm_patch_baseline.ubuntu.id,
    data.aws_ssm_patch_baseline.debian.id,
    data.aws_ssm_patch_baseline.rhel.id,
    data.aws_ssm_patch_baseline.amazon.id,
    data.aws_ssm_patch_baseline.amazon2.id,
    data.aws_ssm_patch_baseline.centos.id,
    data.aws_ssm_patch_baseline.oracle.id
  ], count.index)
  patch_group = var.maintenance_windows[2]
}



############ Optional Patch Groups ###########

resource "aws_ssm_patch_group" "patchgroup-install-custom_1" {
  count = length(aws_ssm_maintenance_window.custom) >= 1 ? length(aws_ssm_maintenance_window.custom) : 0
  baseline_id = data.aws_ssm_patch_baseline.all[0].id
  patch_group = var.maintenance_windows[count.index]
}

resource "aws_ssm_patch_group" "patchgroup-install-custom_2" {
  count = length(aws_ssm_maintenance_window.custom) >= 1 ? length(aws_ssm_maintenance_window.custom) : 0
  baseline_id = data.aws_ssm_patch_baseline.all[1].id
  patch_group = var.maintenance_windows[count.index]
}

resource "aws_ssm_patch_group" "patchgroup-install-custom_3" {
  count = length(aws_ssm_maintenance_window.custom) >= 1 ? length(aws_ssm_maintenance_window.custom) : 0
  baseline_id = data.aws_ssm_patch_baseline.all[2].id
  patch_group = var.maintenance_windows[count.index]
}

resource "aws_ssm_patch_group" "patchgroup-install-custom_4" {
  count = length(aws_ssm_maintenance_window.custom) >= 1 ? length(aws_ssm_maintenance_window.custom) : 0
  baseline_id = data.aws_ssm_patch_baseline.all[3].id
  patch_group = var.maintenance_windows[count.index]
}

resource "aws_ssm_patch_group" "patchgroup-install-custom_5" {
  count = length(aws_ssm_maintenance_window.custom) >= 1 ? length(aws_ssm_maintenance_window.custom) : 0
  baseline_id = data.aws_ssm_patch_baseline.all[4].id
  patch_group = var.maintenance_windows[count.index]
}

resource "aws_ssm_patch_group" "patchgroup-install-custom_6" {
  count = length(aws_ssm_maintenance_window.custom) >= 1 ? length(aws_ssm_maintenance_window.custom) : 0
  baseline_id = data.aws_ssm_patch_baseline.all[5].id
  patch_group = var.maintenance_windows[count.index]
}

resource "aws_ssm_patch_group" "patchgroup-install-custom_7" {
  count = length(aws_ssm_maintenance_window.custom) >= 1 ? length(aws_ssm_maintenance_window.custom) : 0
  baseline_id = data.aws_ssm_patch_baseline.all[6].id
  patch_group = var.maintenance_windows[count.index]
}

resource "aws_ssm_patch_group" "patchgroup-install-custom_8" {
  count = length(aws_ssm_maintenance_window.custom) >= 1 ? length(aws_ssm_maintenance_window.custom) : 0
  baseline_id = data.aws_ssm_patch_baseline.all[7].id
  patch_group = var.maintenance_windows[count.index]
}