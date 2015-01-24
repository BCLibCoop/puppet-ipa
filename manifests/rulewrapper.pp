# FreeIPA templating module by James
# Copyright (C) 2012-2013+ James Shubin
# Written by James Shubin <james@shubin.ca>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# NOTE: this wraps shorewall::rule so that we can add on additional fake 'tags'
define ipa::rulewrapper(
        $action = '',
        $source = '',
        $source_ips = [],
        $dest = '',
        $dest_ips = [],
        $proto = '',
        $port = [],
        $sport = [],
        $original = [],
        $comment = '',
        $ensure = present,
        $match = ''     # additional tag parameter
) {
        shorewall::rule { $name:
                action => $action,
                source => $source,
                source_ips => $source_ips,
                dest => $dest,
                dest_ips => $dest_ips,
                proto => $proto,
                port => $port,
                sport => $sport,
                comment => $comment,
                ensure => $ensure,
        }
}

# vim: ts=8
# vim: set ft=puppet si sts=2 et tw=80 sw=2:
